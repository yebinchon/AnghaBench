
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_dfll {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int dev_err (TYPE_1__*,char*,char const*,int) ;
 int of_property_read_u32 (int ,char const*,int *) ;

__attribute__((used)) static bool read_dt_param(struct tegra_dfll *td, const char *param, u32 *dest)
{
 int err = of_property_read_u32(td->dev->of_node, param, dest);

 if (err < 0) {
  dev_err(td->dev, "failed to read DT parameter %s: %d\n",
   param, err);
  return 0;
 }

 return 1;
}
