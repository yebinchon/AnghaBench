
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hi3660_stub_clk {unsigned long* msg; unsigned long cmd; unsigned long rate; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int mbox; TYPE_1__ cl; } ;


 unsigned long MHZ ;
 int dev_dbg (int ,char*,unsigned long,unsigned long) ;
 int mbox_client_txdone (int ,int ) ;
 int mbox_send_message (int ,unsigned long*) ;
 TYPE_2__ stub_clk_chan ;
 struct hi3660_stub_clk* to_stub_clk (struct clk_hw*) ;

__attribute__((used)) static int hi3660_stub_clk_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct hi3660_stub_clk *stub_clk = to_stub_clk(hw);

 stub_clk->msg[0] = stub_clk->cmd;
 stub_clk->msg[1] = rate / MHZ;

 dev_dbg(stub_clk_chan.cl.dev, "set rate msg[0]=0x%x msg[1]=0x%x\n",
  stub_clk->msg[0], stub_clk->msg[1]);

 mbox_send_message(stub_clk_chan.mbox, stub_clk->msg);
 mbox_client_txdone(stub_clk_chan.mbox, 0);

 stub_clk->rate = rate;
 return 0;
}
