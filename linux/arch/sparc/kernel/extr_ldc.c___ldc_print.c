
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {int snd_nxt; int rcv_nxt; int tx_num_entries; int tx_tail; int tx_head; int rx_num_entries; int rx_tail; int rx_head; int hs_state; int chan_state; int state; int flags; int id; } ;


 int pr_info (char*,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int state_to_str (int ) ;

void __ldc_print(struct ldc_channel *lp, const char *caller)
{
 pr_info("%s: id=0x%lx flags=0x%x state=%s cstate=0x%lx hsstate=0x%x\n"
  "\trx_h=0x%lx rx_t=0x%lx rx_n=%ld\n"
  "\ttx_h=0x%lx tx_t=0x%lx tx_n=%ld\n"
  "\trcv_nxt=%u snd_nxt=%u\n",
  caller, lp->id, lp->flags, state_to_str(lp->state),
  lp->chan_state, lp->hs_state,
  lp->rx_head, lp->rx_tail, lp->rx_num_entries,
  lp->tx_head, lp->tx_tail, lp->tx_num_entries,
  lp->rcv_nxt, lp->snd_nxt);
}
