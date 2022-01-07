
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {size_t mode; int dev; } ;


 size_t DFLL_DISABLED ;
 int DFLL_OPEN_LOOP ;
 int EPERM ;
 int dev_err (int ,char*,int ) ;
 int dfll_set_mode (struct tegra_dfll*,int ) ;
 int * mode_name ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int dfll_enable(struct tegra_dfll *td)
{
 if (td->mode != DFLL_DISABLED) {
  dev_err(td->dev, "cannot enable DFLL in %s mode\n",
   mode_name[td->mode]);
  return -EPERM;
 }

 pm_runtime_get_sync(td->dev);
 dfll_set_mode(td, DFLL_OPEN_LOOP);

 return 0;
}
