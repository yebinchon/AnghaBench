
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sunxi_rsb {scalar_t__ clk; scalar_t__ rstc; scalar_t__ regs; int lock; int complete; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ RSB_CCR ;
 unsigned long RSB_CCR_CLK_DIV (int) ;
 int RSB_CCR_MAX_CLK_DIV ;
 unsigned long RSB_CCR_SDA_OUT_DELAY (unsigned long) ;
 scalar_t__ RSB_CTRL ;
 int RSB_CTRL_NAME ;
 unsigned long RSB_CTRL_SOFT_RST ;
 unsigned long RSB_MAX_FREQ ;
 int clk_disable_unprepare (scalar_t__) ;
 unsigned long clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_info (struct device*,char*,unsigned long) ;
 int dev_warn (struct device*,char*,int) ;
 scalar_t__ devm_clk_get (struct device*,int *) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct sunxi_rsb* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct sunxi_rsb*) ;
 scalar_t__ devm_reset_control_get (struct device*,int *) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned long*) ;
 int of_rsb_register_devices (struct sunxi_rsb*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sunxi_rsb*) ;
 int readl_poll_timeout (scalar_t__,unsigned long,int,int,int) ;
 int reset_control_assert (scalar_t__) ;
 int reset_control_deassert (scalar_t__) ;
 int sunxi_rsb_init_device_mode (struct sunxi_rsb*) ;
 int sunxi_rsb_irq ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int sunxi_rsb_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct resource *r;
 struct sunxi_rsb *rsb;
 unsigned long p_clk_freq;
 u32 clk_delay, clk_freq = 3000000;
 int clk_div, irq, ret;
 u32 reg;

 of_property_read_u32(np, "clock-frequency", &clk_freq);
 if (clk_freq > RSB_MAX_FREQ) {
  dev_err(dev,
   "clock-frequency (%u Hz) is too high (max = 20MHz)\n",
   clk_freq);
  return -EINVAL;
 }

 rsb = devm_kzalloc(dev, sizeof(*rsb), GFP_KERNEL);
 if (!rsb)
  return -ENOMEM;

 rsb->dev = dev;
 platform_set_drvdata(pdev, rsb);
 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rsb->regs = devm_ioremap_resource(dev, r);
 if (IS_ERR(rsb->regs))
  return PTR_ERR(rsb->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 rsb->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(rsb->clk)) {
  ret = PTR_ERR(rsb->clk);
  dev_err(dev, "failed to retrieve clk: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(rsb->clk);
 if (ret) {
  dev_err(dev, "failed to enable clk: %d\n", ret);
  return ret;
 }

 p_clk_freq = clk_get_rate(rsb->clk);

 rsb->rstc = devm_reset_control_get(dev, ((void*)0));
 if (IS_ERR(rsb->rstc)) {
  ret = PTR_ERR(rsb->rstc);
  dev_err(dev, "failed to retrieve reset controller: %d\n", ret);
  goto err_clk_disable;
 }

 ret = reset_control_deassert(rsb->rstc);
 if (ret) {
  dev_err(dev, "failed to deassert reset line: %d\n", ret);
  goto err_clk_disable;
 }

 init_completion(&rsb->complete);
 mutex_init(&rsb->lock);


 writel(RSB_CTRL_SOFT_RST, rsb->regs + RSB_CTRL);
 readl_poll_timeout(rsb->regs + RSB_CTRL, reg,
      !(reg & RSB_CTRL_SOFT_RST), 1000, 100000);
 clk_div = p_clk_freq / clk_freq / 2;
 if (!clk_div)
  clk_div = 1;
 else if (clk_div > RSB_CCR_MAX_CLK_DIV + 1)
  clk_div = RSB_CCR_MAX_CLK_DIV + 1;

 clk_delay = clk_div >> 1;
 if (!clk_delay)
  clk_delay = 1;

 dev_info(dev, "RSB running at %lu Hz\n", p_clk_freq / clk_div / 2);
 writel(RSB_CCR_SDA_OUT_DELAY(clk_delay) | RSB_CCR_CLK_DIV(clk_div - 1),
        rsb->regs + RSB_CCR);

 ret = devm_request_irq(dev, irq, sunxi_rsb_irq, 0, RSB_CTRL_NAME, rsb);
 if (ret) {
  dev_err(dev, "can't register interrupt handler irq %d: %d\n",
   irq, ret);
  goto err_reset_assert;
 }


 ret = sunxi_rsb_init_device_mode(rsb);
 if (ret)
  dev_warn(dev, "Initialize device mode failed: %d\n", ret);

 of_rsb_register_devices(rsb);

 return 0;

err_reset_assert:
 reset_control_assert(rsb->rstc);

err_clk_disable:
 clk_disable_unprepare(rsb->clk);

 return ret;
}
