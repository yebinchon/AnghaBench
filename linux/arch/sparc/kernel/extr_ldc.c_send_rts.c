
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ldc_packet {scalar_t__ seqid; int env; } ;
struct TYPE_2__ {int mode; } ;
struct ldc_channel {scalar_t__ rcv_nxt; TYPE_1__ cfg; } ;


 int EBUSY ;
 int HS ;
 int LDC_INFO ;
 int LDC_RTS ;
 struct ldc_packet* handshake_compose_ctrl (struct ldc_channel*,int ,int ,int *,int ,unsigned long*) ;
 int ldcdbg (int ,char*,int ,scalar_t__) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;

__attribute__((used)) static int send_rts(struct ldc_channel *lp)
{
 struct ldc_packet *p;
 unsigned long new_tail;

 p = handshake_compose_ctrl(lp, LDC_INFO, LDC_RTS, ((void*)0), 0,
       &new_tail);
 if (p) {
  p->env = lp->cfg.mode;
  p->seqid = 0;
  lp->rcv_nxt = 0;

  ldcdbg(HS, "SEND RTS env[0x%x] seqid[0x%x]\n",
         p->env, p->seqid);

  return send_tx_packet(lp, p, new_tail);
 }
 return -EBUSY;
}
