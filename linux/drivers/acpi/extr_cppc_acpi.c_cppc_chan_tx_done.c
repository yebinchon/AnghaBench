
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mbox_client {int dummy; } ;


 int pr_debug (char*,int ,int) ;

__attribute__((used)) static void cppc_chan_tx_done(struct mbox_client *cl, void *msg, int ret)
{
 if (ret < 0)
  pr_debug("TX did not complete: CMD sent:%x, ret:%d\n",
    *(u16 *)msg, ret);
 else
  pr_debug("TX completed. CMD sent:%x, ret:%d\n",
    *(u16 *)msg, ret);
}
