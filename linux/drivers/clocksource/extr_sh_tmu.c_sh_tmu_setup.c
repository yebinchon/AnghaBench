
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sh_tmu_device {unsigned int num_channels; int rate; int clk; int mapbase; int * channels; struct platform_device* pdev; int model; int lock; } ;
struct sh_timer_config {int channels_mask; } ;
struct platform_device_id {int driver_data; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; scalar_t__ of_node; } ;
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
 unsigned int hweight8 (int ) ;
 int iounmap (int ) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 int platform_set_drvdata (struct platform_device*,struct sh_tmu_device*) ;
 int raw_spin_lock_init (int *) ;
 int sh_tmu_channel_setup (int *,unsigned int,int,int,struct sh_tmu_device*) ;
 int sh_tmu_map_memory (struct sh_tmu_device*) ;
 int sh_tmu_parse_dt (struct sh_tmu_device*) ;

__attribute__((used)) static int sh_tmu_setup(struct sh_tmu_device *tmu, struct platform_device *pdev)
{
 unsigned int i;
 int ret;

 tmu->pdev = pdev;

 raw_spin_lock_init(&tmu->lock);

 if (IS_ENABLED(CONFIG_OF) && pdev->dev.of_node) {
  ret = sh_tmu_parse_dt(tmu);
  if (ret < 0)
   return ret;
 } else if (pdev->dev.platform_data) {
  const struct platform_device_id *id = pdev->id_entry;
  struct sh_timer_config *cfg = pdev->dev.platform_data;

  tmu->model = id->driver_data;
  tmu->num_channels = hweight8(cfg->channels_mask);
 } else {
  dev_err(&tmu->pdev->dev, "missing platform data\n");
  return -ENXIO;
 }


 tmu->clk = clk_get(&tmu->pdev->dev, "fck");
 if (IS_ERR(tmu->clk)) {
  dev_err(&tmu->pdev->dev, "cannot get clock\n");
  return PTR_ERR(tmu->clk);
 }

 ret = clk_prepare(tmu->clk);
 if (ret < 0)
  goto err_clk_put;


 ret = clk_enable(tmu->clk);
 if (ret < 0)
  goto err_clk_unprepare;

 tmu->rate = clk_get_rate(tmu->clk) / 4;
 clk_disable(tmu->clk);


 ret = sh_tmu_map_memory(tmu);
 if (ret < 0) {
  dev_err(&tmu->pdev->dev, "failed to remap I/O memory\n");
  goto err_clk_unprepare;
 }


 tmu->channels = kcalloc(tmu->num_channels, sizeof(*tmu->channels),
    GFP_KERNEL);
 if (tmu->channels == ((void*)0)) {
  ret = -ENOMEM;
  goto err_unmap;
 }





 for (i = 0; i < tmu->num_channels; ++i) {
  ret = sh_tmu_channel_setup(&tmu->channels[i], i,
        i == 0, i == 1, tmu);
  if (ret < 0)
   goto err_unmap;
 }

 platform_set_drvdata(pdev, tmu);

 return 0;

err_unmap:
 kfree(tmu->channels);
 iounmap(tmu->mapbase);
err_clk_unprepare:
 clk_unprepare(tmu->clk);
err_clk_put:
 clk_put(tmu->clk);
 return ret;
}
