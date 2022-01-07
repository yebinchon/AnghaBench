
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_spec {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct rbd_spec *rbd_spec_get(struct rbd_spec *spec)
{
 kref_get(&spec->kref);

 return spec;
}
