
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipl_rl_hdr {int len; } ;
struct ipl_rb_hdr {int len; int rbt; } ;
struct ipl_rb_components {int dummy; } ;
struct ipl_rb_certificates {int dummy; } ;
struct ipl_pl_hdr {unsigned long len; } ;
struct TYPE_6__ {scalar_t__ ipl_parmblock_ptr; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;


 int IPL_PL_FLAG_IPLSR ;
 int IPL_PL_FLAG_SIPL ;


 TYPE_3__ S390_lowcore ;
 int copy_certificates_bootdata (struct ipl_rb_certificates*) ;
 int copy_components_bootdata (struct ipl_rb_components*) ;
 unsigned long find_bootdata_space (struct ipl_rb_components*,struct ipl_rb_certificates*,unsigned long) ;
 TYPE_2__ ipl_block ;
 int ipl_block_valid ;
 int ipl_secure_flag ;

unsigned long read_ipl_report(unsigned long safe_addr)
{
 struct ipl_rb_certificates *certs;
 struct ipl_rb_components *comps;
 struct ipl_pl_hdr *pl_hdr;
 struct ipl_rl_hdr *rl_hdr;
 struct ipl_rb_hdr *rb_hdr;
 unsigned long tmp;
 void *rl_end;





 if (!ipl_block_valid ||
     !(ipl_block.hdr.flags & IPL_PL_FLAG_IPLSR))
  return safe_addr;
 ipl_secure_flag = !!(ipl_block.hdr.flags & IPL_PL_FLAG_SIPL);






 tmp = (unsigned long) S390_lowcore.ipl_parmblock_ptr;
 pl_hdr = (struct ipl_pl_hdr *) tmp;
 tmp = (tmp + pl_hdr->len + 7) & -8UL;
 rl_hdr = (struct ipl_rl_hdr *) tmp;

 certs = ((void*)0);
 comps = ((void*)0);
 rl_end = (void *) rl_hdr + rl_hdr->len;
 rb_hdr = (void *) rl_hdr + sizeof(*rl_hdr);
 while ((void *) rb_hdr + sizeof(*rb_hdr) < rl_end &&
        (void *) rb_hdr + rb_hdr->len <= rl_end) {

  switch (rb_hdr->rbt) {
  case 129:
   certs = (struct ipl_rb_certificates *) rb_hdr;
   break;
  case 128:
   comps = (struct ipl_rb_components *) rb_hdr;
   break;
  default:
   break;
  }

  rb_hdr = (void *) rb_hdr + rb_hdr->len;
 }





 if (!comps || !certs)
  return safe_addr;





 safe_addr = find_bootdata_space(comps, certs, safe_addr);
 copy_components_bootdata(comps);
 copy_certificates_bootdata(certs);

 return safe_addr;
}
