
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_msi_priv_data {int dummy; } ;
struct device {int dummy; } ;


 int platform_msi_alloc_descs_with_irq (struct device*,int ,int,struct platform_msi_priv_data*) ;

__attribute__((used)) static int platform_msi_alloc_descs(struct device *dev, int nvec,
        struct platform_msi_priv_data *data)

{
 return platform_msi_alloc_descs_with_irq(dev, 0, nvec, data);
}
