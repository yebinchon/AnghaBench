
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ret; int size; int data; } ;
struct TYPE_6__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {int cmd_and_id; TYPE_4__ rx; TYPE_2__ tx; int mrq; } ;
struct TYPE_7__ {int size; int data; } ;
struct TYPE_5__ {int size; int data; } ;
struct tegra_bpmp_clk_message {int cmd; int id; TYPE_3__ rx; TYPE_1__ tx; } ;
struct tegra_bpmp {int dummy; } ;
struct mrq_clk_request {int cmd_and_id; TYPE_4__ rx; TYPE_2__ tx; int mrq; } ;
typedef int request ;
typedef int msg ;


 int EINVAL ;
 int MRQ_CLK ;
 int memcpy (void*,int ,int ) ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (struct tegra_bpmp*,struct tegra_bpmp_message*) ;

__attribute__((used)) static int tegra_bpmp_clk_transfer(struct tegra_bpmp *bpmp,
       const struct tegra_bpmp_clk_message *clk)
{
 struct mrq_clk_request request;
 struct tegra_bpmp_message msg;
 void *req = &request;
 int err;

 memset(&request, 0, sizeof(request));
 request.cmd_and_id = (clk->cmd << 24) | clk->id;
 memcpy(req + 4, clk->tx.data, clk->tx.size);

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_CLK;
 msg.tx.data = &request;
 msg.tx.size = sizeof(request);
 msg.rx.data = clk->rx.data;
 msg.rx.size = clk->rx.size;

 err = tegra_bpmp_transfer(bpmp, &msg);
 if (err < 0)
  return err;
 else if (msg.rx.ret < 0)
  return -EINVAL;

 return 0;
}
