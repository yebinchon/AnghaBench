
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devres {void* data; int node; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 struct devres* alloc_dr (int ,size_t,int ,int ) ;
 int dev_to_node (struct device*) ;
 int devm_kmalloc_release ;
 int devres_add (struct device*,void*) ;
 int set_node_dbginfo (int *,char*,size_t) ;
 scalar_t__ unlikely (int) ;

void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
{
 struct devres *dr;


 dr = alloc_dr(devm_kmalloc_release, size, gfp, dev_to_node(dev));
 if (unlikely(!dr))
  return ((void*)0);





 set_node_dbginfo(&dr->node, "devm_kzalloc_release", size);
 devres_add(dev, dr->data);
 return dr->data;
}
