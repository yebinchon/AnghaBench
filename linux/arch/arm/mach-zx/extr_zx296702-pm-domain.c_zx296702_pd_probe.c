
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct genpd_onecell_data {int num_domains; int * domains; } ;


 int ARRAY_SIZE (int *) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct genpd_onecell_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;
 int pcubase ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_genpd_init (int ,int *,int) ;
 int * zx296702_pm_domains ;

__attribute__((used)) static int zx296702_pd_probe(struct platform_device *pdev)
{
 struct genpd_onecell_data *genpd_data;
 struct resource *res;
 int i;

 genpd_data = devm_kzalloc(&pdev->dev, sizeof(*genpd_data), GFP_KERNEL);
 if (!genpd_data)
  return -ENOMEM;

 genpd_data->domains = zx296702_pm_domains;
 genpd_data->num_domains = ARRAY_SIZE(zx296702_pm_domains);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "no memory resource defined\n");
  return -ENODEV;
 }

 pcubase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pcubase)) {
  dev_err(&pdev->dev, "ioremap fail.\n");
  return -EIO;
 }

 for (i = 0; i < ARRAY_SIZE(zx296702_pm_domains); ++i)
  pm_genpd_init(zx296702_pm_domains[i], ((void*)0), 0);

 of_genpd_add_provider_onecell(pdev->dev.of_node, genpd_data);
 return 0;
}
