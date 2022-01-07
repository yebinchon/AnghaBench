
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_system_bus_priv {int dev; TYPE_1__* bank; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ base; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_err (int ,char*,int,int) ;

__attribute__((used)) static int uniphier_system_bus_check_overlap(
    const struct uniphier_system_bus_priv *priv)
{
 int i, j;

 for (i = 0; i < ARRAY_SIZE(priv->bank); i++) {
  for (j = i + 1; j < ARRAY_SIZE(priv->bank); j++) {
   if (priv->bank[i].end > priv->bank[j].base &&
       priv->bank[i].base < priv->bank[j].end) {
    dev_err(priv->dev,
     "region overlap between bank%d and bank%d\n",
     i, j);
    return -EINVAL;
   }
  }
 }

 return 0;
}
