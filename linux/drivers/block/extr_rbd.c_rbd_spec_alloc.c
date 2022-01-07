
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_spec {int kref; int snap_id; int pool_id; } ;


 int CEPH_NOPOOL ;
 int CEPH_NOSNAP ;
 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct rbd_spec* kzalloc (int,int ) ;

__attribute__((used)) static struct rbd_spec *rbd_spec_alloc(void)
{
 struct rbd_spec *spec;

 spec = kzalloc(sizeof (*spec), GFP_KERNEL);
 if (!spec)
  return ((void*)0);

 spec->pool_id = CEPH_NOPOOL;
 spec->snap_id = CEPH_NOSNAP;
 kref_init(&spec->kref);

 return spec;
}
