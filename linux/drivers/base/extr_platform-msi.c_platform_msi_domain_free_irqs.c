
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msi_priv_data; } ;
struct msi_desc {TYPE_1__ platform; } ;
struct device {int msi_domain; } ;


 int MAX_DEV_MSIS ;
 int dev_to_msi_list (struct device*) ;
 struct msi_desc* first_msi_entry (struct device*) ;
 int list_empty (int ) ;
 int msi_domain_free_irqs (int ,struct device*) ;
 int platform_msi_free_descs (struct device*,int ,int ) ;
 int platform_msi_free_priv_data (int ) ;

void platform_msi_domain_free_irqs(struct device *dev)
{
 if (!list_empty(dev_to_msi_list(dev))) {
  struct msi_desc *desc;

  desc = first_msi_entry(dev);
  platform_msi_free_priv_data(desc->platform.msi_priv_data);
 }

 msi_domain_free_irqs(dev->msi_domain, dev);
 platform_msi_free_descs(dev, 0, MAX_DEV_MSIS);
}
