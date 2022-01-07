
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sram_platdata {int granularity; int pool_name; } ;
struct sram_bank_info {struct sram_bank_info* pool_name; scalar_t__ sram_virt; int gpool; int node; scalar_t__ sram_size; scalar_t__ sram_phys; int granularity; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_3__ {struct sram_platdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef scalar_t__ phys_addr_t ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int gen_pool_add_virt (int ,unsigned long,scalar_t__,scalar_t__,int) ;
 int gen_pool_create (int ,int) ;
 int gen_pool_destroy (int ) ;
 int ilog2 (int ) ;
 scalar_t__ ioremap (scalar_t__,scalar_t__) ;
 int iounmap (scalar_t__) ;
 int kfree (struct sram_bank_info*) ;
 struct sram_bank_info* kstrdup (int ,int ) ;
 struct sram_bank_info* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sram_bank_info*) ;
 scalar_t__ resource_size (struct resource*) ;
 int sram_bank_list ;
 int sram_lock ;

__attribute__((used)) static int sram_probe(struct platform_device *pdev)
{
 struct sram_platdata *pdata = pdev->dev.platform_data;
 struct sram_bank_info *info;
 struct resource *res;
 int ret = 0;

 if (!pdata || !pdata->pool_name)
  return -ENODEV;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "no memory resource defined\n");
  ret = -ENODEV;
  goto out;
 }

 if (!resource_size(res))
  return 0;

 info->sram_phys = (phys_addr_t)res->start;
 info->sram_size = resource_size(res);
 info->sram_virt = ioremap(info->sram_phys, info->sram_size);
 info->pool_name = kstrdup(pdata->pool_name, GFP_KERNEL);
 info->granularity = pdata->granularity;

 info->gpool = gen_pool_create(ilog2(info->granularity), -1);
 if (!info->gpool) {
  dev_err(&pdev->dev, "create pool failed\n");
  ret = -ENOMEM;
  goto create_pool_err;
 }

 ret = gen_pool_add_virt(info->gpool, (unsigned long)info->sram_virt,
    info->sram_phys, info->sram_size, -1);
 if (ret < 0) {
  dev_err(&pdev->dev, "add new chunk failed\n");
  ret = -ENOMEM;
  goto add_chunk_err;
 }

 mutex_lock(&sram_lock);
 list_add(&info->node, &sram_bank_list);
 mutex_unlock(&sram_lock);

 platform_set_drvdata(pdev, info);

 dev_info(&pdev->dev, "initialized\n");
 return 0;

add_chunk_err:
 gen_pool_destroy(info->gpool);
create_pool_err:
 iounmap(info->sram_virt);
 kfree(info->pool_name);
out:
 kfree(info);
 return ret;
}
