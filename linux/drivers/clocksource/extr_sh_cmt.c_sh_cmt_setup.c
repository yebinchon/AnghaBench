
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sh_timer_config {unsigned int channels_mask; } ;
struct sh_cmt_info {unsigned int channels_mask; int width; } ;
struct sh_cmt_device {unsigned int hw_channels; int rate; unsigned int num_channels; int clk; int mapbase; int * channels; struct sh_cmt_info const* info; struct platform_device* pdev; int lock; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_4__ {struct sh_timer_config* platform_data; scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; struct platform_device_id* id_entry; } ;


 int CONFIG_OF ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get (TYPE_1__*,char*) ;
 int clk_get_rate (int ) ;
 int clk_prepare (int ) ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int ffs (unsigned int) ;
 unsigned int hweight8 (unsigned int) ;
 int iounmap (int ) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 struct sh_cmt_info const* of_device_get_match_data (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct sh_cmt_device*) ;
 int raw_spin_lock_init (int *) ;
 int sh_cmt_map_memory (struct sh_cmt_device*) ;
 int sh_cmt_setup_channel (int *,unsigned int,unsigned int,int,int,struct sh_cmt_device*) ;

__attribute__((used)) static int sh_cmt_setup(struct sh_cmt_device *cmt, struct platform_device *pdev)
{
 unsigned int mask;
 unsigned int i;
 int ret;

 cmt->pdev = pdev;
 raw_spin_lock_init(&cmt->lock);

 if (IS_ENABLED(CONFIG_OF) && pdev->dev.of_node) {
  cmt->info = of_device_get_match_data(&pdev->dev);
  cmt->hw_channels = cmt->info->channels_mask;
 } else if (pdev->dev.platform_data) {
  struct sh_timer_config *cfg = pdev->dev.platform_data;
  const struct platform_device_id *id = pdev->id_entry;

  cmt->info = (const struct sh_cmt_info *)id->driver_data;
  cmt->hw_channels = cfg->channels_mask;
 } else {
  dev_err(&cmt->pdev->dev, "missing platform data\n");
  return -ENXIO;
 }


 cmt->clk = clk_get(&cmt->pdev->dev, "fck");
 if (IS_ERR(cmt->clk)) {
  dev_err(&cmt->pdev->dev, "cannot get clock\n");
  return PTR_ERR(cmt->clk);
 }

 ret = clk_prepare(cmt->clk);
 if (ret < 0)
  goto err_clk_put;


 ret = clk_enable(cmt->clk);
 if (ret < 0)
  goto err_clk_unprepare;

 if (cmt->info->width == 16)
  cmt->rate = clk_get_rate(cmt->clk) / 512;
 else
  cmt->rate = clk_get_rate(cmt->clk) / 8;

 clk_disable(cmt->clk);


 ret = sh_cmt_map_memory(cmt);
 if (ret < 0)
  goto err_clk_unprepare;


 cmt->num_channels = hweight8(cmt->hw_channels);
 cmt->channels = kcalloc(cmt->num_channels, sizeof(*cmt->channels),
    GFP_KERNEL);
 if (cmt->channels == ((void*)0)) {
  ret = -ENOMEM;
  goto err_unmap;
 }





 for (i = 0, mask = cmt->hw_channels; i < cmt->num_channels; ++i) {
  unsigned int hwidx = ffs(mask) - 1;
  bool clocksource = i == 1 || cmt->num_channels == 1;
  bool clockevent = i == 0;

  ret = sh_cmt_setup_channel(&cmt->channels[i], i, hwidx,
        clockevent, clocksource, cmt);
  if (ret < 0)
   goto err_unmap;

  mask &= ~(1 << hwidx);
 }

 platform_set_drvdata(pdev, cmt);

 return 0;

err_unmap:
 kfree(cmt->channels);
 iounmap(cmt->mapbase);
err_clk_unprepare:
 clk_unprepare(cmt->clk);
err_clk_put:
 clk_put(cmt->clk);
 return ret;
}
