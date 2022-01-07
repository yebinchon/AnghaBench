
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct TYPE_3__ {int tx_block; int tx_tout; int knows_txdone; int * tx_done; struct device* dev; } ;
struct hi6220_stub_clk {struct clk* dfs_map; TYPE_2__ hw; struct clk* mbox; TYPE_1__ cl; int id; struct device* dev; } ;
struct device_node {int dummy; } ;
struct clk_init_data {char* name; scalar_t__ flags; scalar_t__ num_parents; int * ops; } ;
struct clk {int dummy; } ;


 int ACPU_DFS_FLAG ;
 int ACPU_DFS_FREQ_LMT ;
 int ACPU_DFS_FREQ_REQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HI6220_STUB_ACPU0 ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_dbg (struct device*,char*,char*) ;
 int dev_err (struct device*,char*) ;
 struct clk* devm_clk_register (struct device*,TYPE_2__*) ;
 struct hi6220_stub_clk* devm_kzalloc (struct device*,int,int ) ;
 int hi6220_stub_clk_ops ;
 struct clk* mbox_request_channel (TYPE_1__*,int ) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk*) ;
 int of_clk_src_simple_get ;
 int regmap_write (struct clk*,int ,int) ;
 struct clk* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int hi6220_stub_clk_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct clk_init_data init;
 struct hi6220_stub_clk *stub_clk;
 struct clk *clk;
 struct device_node *np = pdev->dev.of_node;
 int ret;

 stub_clk = devm_kzalloc(dev, sizeof(*stub_clk), GFP_KERNEL);
 if (!stub_clk)
  return -ENOMEM;

 stub_clk->dfs_map = syscon_regmap_lookup_by_phandle(np,
    "hisilicon,hi6220-clk-sram");
 if (IS_ERR(stub_clk->dfs_map)) {
  dev_err(dev, "failed to get sram regmap\n");
  return PTR_ERR(stub_clk->dfs_map);
 }

 stub_clk->hw.init = &init;
 stub_clk->dev = dev;
 stub_clk->id = HI6220_STUB_ACPU0;


 stub_clk->cl.dev = dev;
 stub_clk->cl.tx_done = ((void*)0);
 stub_clk->cl.tx_block = 1;
 stub_clk->cl.tx_tout = 500;
 stub_clk->cl.knows_txdone = 0;


 stub_clk->mbox = mbox_request_channel(&stub_clk->cl, 0);
 if (IS_ERR(stub_clk->mbox)) {
  dev_err(dev, "failed get mailbox channel\n");
  return PTR_ERR(stub_clk->mbox);
 }

 init.name = "acpu0";
 init.ops = &hi6220_stub_clk_ops;
 init.num_parents = 0;
 init.flags = 0;

 clk = devm_clk_register(dev, &stub_clk->hw);
 if (IS_ERR(clk))
  return PTR_ERR(clk);

 ret = of_clk_add_provider(np, of_clk_src_simple_get, clk);
 if (ret) {
  dev_err(dev, "failed to register OF clock provider\n");
  return ret;
 }


 regmap_write(stub_clk->dfs_map, ACPU_DFS_FLAG, 0x0);
 regmap_write(stub_clk->dfs_map, ACPU_DFS_FREQ_REQ, 0x0);
 regmap_write(stub_clk->dfs_map, ACPU_DFS_FREQ_LMT, 0x0);

 dev_dbg(dev, "Registered clock '%s'\n", init.name);
 return 0;
}
