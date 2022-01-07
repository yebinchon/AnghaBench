
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int (* dr_release_t ) (struct device*,void*) ;
typedef int dr_match_t ;


 int ENOENT ;
 int devres_free (void*) ;
 void* devres_remove (struct device*,int (*) (struct device*,void*),int ,void*) ;
 int stub1 (struct device*,void*) ;
 scalar_t__ unlikely (int) ;

int devres_release(struct device *dev, dr_release_t release,
     dr_match_t match, void *match_data)
{
 void *res;

 res = devres_remove(dev, release, match, match_data);
 if (unlikely(!res))
  return -ENOENT;

 (*release)(dev, res);
 devres_free(res);
 return 0;
}
