
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_tmu_device {int num_channels; TYPE_1__* pdev; int model; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int EINVAL ;
 int SH_TMU ;
 int dev_err (TYPE_2__*,char*,int) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int sh_tmu_parse_dt(struct sh_tmu_device *tmu)
{
 struct device_node *np = tmu->pdev->dev.of_node;

 tmu->model = SH_TMU;
 tmu->num_channels = 3;

 of_property_read_u32(np, "#renesas,channels", &tmu->num_channels);

 if (tmu->num_channels != 2 && tmu->num_channels != 3) {
  dev_err(&tmu->pdev->dev, "invalid number of channels %u\n",
   tmu->num_channels);
  return -EINVAL;
 }

 return 0;
}
