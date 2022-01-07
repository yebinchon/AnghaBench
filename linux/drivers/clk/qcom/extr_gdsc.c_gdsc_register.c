
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct regmap {int dummy; } ;
struct genpd_onecell_data {size_t num_domains; int ** domains; } ;
struct gdsc_desc {size_t num; struct gdsc** scs; struct device* dev; } ;
struct gdsc {int pd; scalar_t__ parent; struct reset_controller_dev* rcdev; struct regmap* regmap; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ** devm_kcalloc (struct device*,size_t,int,int ) ;
 struct genpd_onecell_data* devm_kzalloc (struct device*,int,int ) ;
 int gdsc_init (struct gdsc*) ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;
 int pm_genpd_add_subdomain (scalar_t__,int *) ;

int gdsc_register(struct gdsc_desc *desc,
    struct reset_controller_dev *rcdev, struct regmap *regmap)
{
 int i, ret;
 struct genpd_onecell_data *data;
 struct device *dev = desc->dev;
 struct gdsc **scs = desc->scs;
 size_t num = desc->num;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->domains = devm_kcalloc(dev, num, sizeof(*data->domains),
         GFP_KERNEL);
 if (!data->domains)
  return -ENOMEM;

 data->num_domains = num;
 for (i = 0; i < num; i++) {
  if (!scs[i])
   continue;
  scs[i]->regmap = regmap;
  scs[i]->rcdev = rcdev;
  ret = gdsc_init(scs[i]);
  if (ret)
   return ret;
  data->domains[i] = &scs[i]->pd;
 }


 for (i = 0; i < num; i++) {
  if (!scs[i])
   continue;
  if (scs[i]->parent)
   pm_genpd_add_subdomain(scs[i]->parent, &scs[i]->pd);
 }

 return of_genpd_add_provider_onecell(dev->of_node, data);
}
