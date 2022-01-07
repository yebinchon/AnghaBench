
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_spec {int kref; } ;


 int kref_put (int *,int ) ;
 int rbd_spec_free ;

__attribute__((used)) static void rbd_spec_put(struct rbd_spec *spec)
{
 if (spec)
  kref_put(&spec->kref, rbd_spec_free);
}
