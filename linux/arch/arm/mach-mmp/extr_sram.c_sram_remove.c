
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_bank_info {struct sram_bank_info* pool_name; int sram_virt; int gpool; int node; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 int gen_pool_destroy (int ) ;
 int iounmap (int ) ;
 int kfree (struct sram_bank_info*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sram_bank_info* platform_get_drvdata (struct platform_device*) ;
 int sram_lock ;

__attribute__((used)) static int sram_remove(struct platform_device *pdev)
{
 struct sram_bank_info *info;

 info = platform_get_drvdata(pdev);
 if (info == ((void*)0))
  return -ENODEV;

 mutex_lock(&sram_lock);
 list_del(&info->node);
 mutex_unlock(&sram_lock);

 gen_pool_destroy(info->gpool);
 iounmap(info->sram_virt);
 kfree(info->pool_name);
 kfree(info);
 return 0;
}
