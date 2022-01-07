
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct adm6996_gpio_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct adm6996_priv {int eesk; int eedi; int eecs; int write; int read; int model; int mib_lock; int reg_mutex; } ;
struct adm6996_gpio_platform_data {int model; int eesk; int eedi; int eecs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int adm6996_read_gpio_reg ;
 int adm6996_switch_init (struct adm6996_priv*,int ,int *) ;
 int adm6996_write_gpio_reg ;
 int dev_name (TYPE_1__*) ;
 int devm_gpio_request (TYPE_1__*,int ,char*) ;
 struct adm6996_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct adm6996_priv*) ;

__attribute__((used)) static int adm6996_gpio_probe(struct platform_device *pdev)
{
 struct adm6996_gpio_platform_data *pdata = pdev->dev.platform_data;
 struct adm6996_priv *priv;
 int ret;

 if (!pdata)
  return -EINVAL;

 priv = devm_kzalloc(&pdev->dev, sizeof(struct adm6996_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->reg_mutex);
 mutex_init(&priv->mib_lock);

 priv->eecs = pdata->eecs;
 priv->eedi = pdata->eedi;
 priv->eesk = pdata->eesk;

 priv->model = pdata->model;
 priv->read = adm6996_read_gpio_reg;
 priv->write = adm6996_write_gpio_reg;

 ret = devm_gpio_request(&pdev->dev, priv->eecs, "adm_eecs");
 if (ret)
  return ret;
 ret = devm_gpio_request(&pdev->dev, priv->eedi, "adm_eedi");
 if (ret)
  return ret;
 ret = devm_gpio_request(&pdev->dev, priv->eesk, "adm_eesk");
 if (ret)
  return ret;

 ret = adm6996_switch_init(priv, dev_name(&pdev->dev), ((void*)0));
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, priv);

 return 0;
}
