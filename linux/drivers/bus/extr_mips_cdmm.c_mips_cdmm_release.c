
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct mips_cdmm_device*) ;
 struct mips_cdmm_device* to_mips_cdmm_device (struct device*) ;

__attribute__((used)) static void mips_cdmm_release(struct device *dev)
{
 struct mips_cdmm_device *cdev = to_mips_cdmm_device(dev);

 kfree(cdev);
}
