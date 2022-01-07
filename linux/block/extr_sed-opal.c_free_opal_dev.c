
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int dummy; } ;


 int clean_opal_dev (struct opal_dev*) ;
 int kfree (struct opal_dev*) ;

void free_opal_dev(struct opal_dev *dev)
{
 if (!dev)
  return;

 clean_opal_dev(dev);
 kfree(dev);
}
