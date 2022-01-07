
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_short ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct atm_vcc {int vci; } ;
struct TYPE_9__ {int pcr; int mcr; int icr; int tbe; int frtt; int nrm; int adtf; int rif; int rdf; int cdf; int trm; } ;
typedef TYPE_2__ srv_cls_param_t ;
struct TYPE_10__ {int r_status_rdf; void* r_air; } ;
typedef TYPE_3__ r_vc_abr_entry ;
struct TYPE_11__ {int f_nrm; int f_nrmexp; int f_crm; int f_cdf; int f_status; void* f_icr; void* f_acr; void* f_mcr; void* f_pcr; int f_vc_type; } ;
typedef TYPE_4__ f_vc_abr_entry ;
typedef int caddr_t ;
struct TYPE_12__ {int LineRate; int sum_mcr; int reass_ram; int memSize; int n_abr; TYPE_1__** testTable; scalar_t__ MAIN_VC_TABLE_ADDR; } ;
struct TYPE_8__ {int vc_status; } ;
typedef TYPE_5__ IADEV ;


 int ABR ;
 int ABR_VC_TABLE ;
 int INVALID_ADTF ;
 int INVALID_CDF ;
 int INVALID_FRTT ;
 int INVALID_ICR ;
 int INVALID_MCR ;
 int INVALID_NRM ;
 int INVALID_PCR ;
 int INVALID_RDF ;
 int INVALID_RIF ;
 int INVALID_TBE ;
 int INVALID_TRM ;
 int MAX_ADTF ;
 int MAX_CDF ;
 int MAX_FRTT ;
 int MAX_NRM ;
 int MAX_RDF ;
 int MAX_RIF ;
 int MAX_TBE ;
 int MAX_TRM ;
 int MCR_UNAVAILABLE ;
 int MIN_FRTT ;
 int MIN_TBE ;
 int MRM ;
 int NO_AAL5_PKT ;
 int REASS_ABR ;
 int REASS_TABLE ;
 int VC_ABR ;
 int VC_ACTIVE ;
 void* cellrate_to_float (int) ;
 int memset (int ,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static int
ia_open_abr_vc(IADEV *dev, srv_cls_param_t *srv_p,
                                                struct atm_vcc *vcc, u8 flag)
{
  f_vc_abr_entry *f_abr_vc;
  r_vc_abr_entry *r_abr_vc;
  u32 icr;
  u8 trm, nrm, crm;
  u16 adtf, air, *ptr16;
  f_abr_vc =(f_vc_abr_entry *)dev->MAIN_VC_TABLE_ADDR;
  f_abr_vc += vcc->vci;
  switch (flag) {
     case 1:
       memset ((caddr_t)f_abr_vc, 0, sizeof(*f_abr_vc));
       f_abr_vc->f_vc_type = ABR;
       nrm = 2 << srv_p->nrm;

       f_abr_vc->f_nrm = nrm << 8 | nrm;
       trm = 100000/(2 << (16 - srv_p->trm));
       if ( trm == 0) trm = 1;
       f_abr_vc->f_nrmexp =(((srv_p->nrm +1) & 0x0f) << 12)|(MRM << 8) | trm;
       crm = srv_p->tbe / nrm;
       if (crm == 0) crm = 1;
       f_abr_vc->f_crm = crm & 0xff;
       f_abr_vc->f_pcr = cellrate_to_float(srv_p->pcr);
       icr = min( srv_p->icr, (srv_p->tbe > srv_p->frtt) ?
    ((srv_p->tbe/srv_p->frtt)*1000000) :
    (1000000/(srv_p->frtt/srv_p->tbe)));
       f_abr_vc->f_icr = cellrate_to_float(icr);
       adtf = (10000 * srv_p->adtf)/8192;
       if (adtf == 0) adtf = 1;
       f_abr_vc->f_cdf = ((7 - srv_p->cdf) << 12 | adtf) & 0xfff;
       f_abr_vc->f_mcr = cellrate_to_float(srv_p->mcr);
       f_abr_vc->f_acr = f_abr_vc->f_icr;
       f_abr_vc->f_status = 0x0042;
       break;
    case 0:
       ptr16 = (u_short *)(dev->reass_ram + REASS_TABLE*dev->memSize);
       *(ptr16 + vcc->vci) = NO_AAL5_PKT | REASS_ABR;
       r_abr_vc = (r_vc_abr_entry*)(dev->reass_ram+ABR_VC_TABLE*dev->memSize);
       r_abr_vc += vcc->vci;
       r_abr_vc->r_status_rdf = (15 - srv_p->rdf) & 0x000f;
       air = srv_p->pcr << (15 - srv_p->rif);
       if (air == 0) air = 1;
       r_abr_vc->r_air = cellrate_to_float(air);
       dev->testTable[vcc->vci]->vc_status = VC_ACTIVE | VC_ABR;
       dev->sum_mcr += srv_p->mcr;
       dev->n_abr++;
       break;
    default:
       break;
  }
  return 0;
}
