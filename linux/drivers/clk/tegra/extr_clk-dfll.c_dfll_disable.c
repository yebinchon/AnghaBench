
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {size_t mode; int dev; } ;


 int DFLL_DISABLED ;
 size_t DFLL_OPEN_LOOP ;
 int EINVAL ;
 int dev_err (int ,char*,int ) ;
 int dfll_set_mode (struct tegra_dfll*,int ) ;
 int * mode_name ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int dfll_disable(struct tegra_dfll *td)
{
 if (td->mode != DFLL_OPEN_LOOP) {
  dev_err(td->dev, "cannot disable DFLL in %s mode\n",
   mode_name[td->mode]);
  return -EINVAL;
 }

 dfll_set_mode(td, DFLL_DISABLED);
 pm_runtime_put_sync(td->dev);

 return 0;
}
