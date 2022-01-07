
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ pm_domain; } ;


 int EEXIST ;
 struct device* ERR_PTR (int ) ;
 struct device* genpd_dev_pm_attach_by_id (struct device*,unsigned int) ;

struct device *dev_pm_domain_attach_by_id(struct device *dev,
       unsigned int index)
{
 if (dev->pm_domain)
  return ERR_PTR(-EEXIST);

 return genpd_dev_pm_attach_by_id(dev, index);
}
