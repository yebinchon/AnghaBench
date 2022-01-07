
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ldc_packet {scalar_t__ stype; scalar_t__ env; int seqid; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct ldc_channel {int hs_state; int snd_nxt; TYPE_1__ cfg; } ;


 int HS ;
 int LDC_ABORT (struct ldc_channel*) ;
 int LDC_EVENT_UP ;
 int LDC_HS_COMPLETE ;
 scalar_t__ LDC_INFO ;
 int LDC_STATE_CONNECTED ;
 int ldc_set_state (struct ldc_channel*,int ) ;
 int ldcdbg (int ,char*,scalar_t__,int ,scalar_t__) ;
 int send_rdx (struct ldc_channel*) ;

__attribute__((used)) static int process_rtr(struct ldc_channel *lp,
         struct ldc_packet *p)
{
 ldcdbg(HS, "GOT RTR stype[%x] seqid[%x] env[%x]\n",
        p->stype, p->seqid, p->env);

 if (p->stype != LDC_INFO ||
     p->env != lp->cfg.mode)
  return LDC_ABORT(lp);

 lp->snd_nxt = p->seqid;
 lp->hs_state = LDC_HS_COMPLETE;
 ldc_set_state(lp, LDC_STATE_CONNECTED);
 send_rdx(lp);

 return LDC_EVENT_UP;
}
