
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {struct switch_dev* next; } ;


 int swlib_free (struct switch_dev*) ;

void
swlib_free_all(struct switch_dev *dev)
{
 struct switch_dev *p;

 while (dev) {
  p = dev->next;
  swlib_free(dev);
  dev = p;
 }
}
