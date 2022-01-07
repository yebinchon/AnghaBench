
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int hw; } ;
struct TYPE_6__ {int tx_block; int knows_txdone; int * tx_done; struct device* dev; } ;
struct TYPE_5__ {int mbox; TYPE_2__ cl; } ;


 int EINVAL ;
 int ENOMEM ;
 unsigned int HI3660_CLK_STUB_NUM ;
 scalar_t__ HI3660_STUB_CLOCK_DATA ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_clk_hw_register (struct device*,int *) ;
 scalar_t__ devm_ioremap (struct device*,int ,int ) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,TYPE_3__*) ;
 scalar_t__ freq_reg ;
 int hi3660_stub_clk_hw_get ;
 TYPE_3__* hi3660_stub_clks ;
 int mbox_request_channel (TYPE_2__*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 TYPE_1__ stub_clk_chan ;

__attribute__((used)) static int hi3660_stub_clk_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 unsigned int i;
 int ret;


 stub_clk_chan.cl.dev = dev;
 stub_clk_chan.cl.tx_done = ((void*)0);
 stub_clk_chan.cl.tx_block = 0;
 stub_clk_chan.cl.knows_txdone = 0;


 stub_clk_chan.mbox = mbox_request_channel(&stub_clk_chan.cl, 0);
 if (IS_ERR(stub_clk_chan.mbox))
  return PTR_ERR(stub_clk_chan.mbox);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -EINVAL;
 freq_reg = devm_ioremap(dev, res->start, resource_size(res));
 if (!freq_reg)
  return -ENOMEM;

 freq_reg += HI3660_STUB_CLOCK_DATA;

 for (i = 0; i < HI3660_CLK_STUB_NUM; i++) {
  ret = devm_clk_hw_register(&pdev->dev, &hi3660_stub_clks[i].hw);
  if (ret)
   return ret;
 }

 return devm_of_clk_add_hw_provider(&pdev->dev, hi3660_stub_clk_hw_get,
        hi3660_stub_clks);
}
