
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_2__ {struct ceph_snap_context* snapc; } ;
struct rbd_device {TYPE_1__ header; } ;
struct ceph_snap_context {size_t num_snaps; int * snaps; } ;


 int CEPH_NOSNAP ;
 int ENOENT ;
 scalar_t__ IS_ERR (char const*) ;
 int PTR_ERR (char const*) ;
 int kfree (char const*) ;
 char* rbd_dev_v2_snap_name (struct rbd_device*,int ) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static u64 rbd_v2_snap_id_by_name(struct rbd_device *rbd_dev, const char *name)
{
 struct ceph_snap_context *snapc = rbd_dev->header.snapc;
 u32 which;
 bool found = 0;
 u64 snap_id;

 for (which = 0; !found && which < snapc->num_snaps; which++) {
  const char *snap_name;

  snap_id = snapc->snaps[which];
  snap_name = rbd_dev_v2_snap_name(rbd_dev, snap_id);
  if (IS_ERR(snap_name)) {

   if (PTR_ERR(snap_name) == -ENOENT)
    continue;
   else
    break;
  }
  found = !strcmp(name, snap_name);
  kfree(snap_name);
 }
 return found ? snap_id : CEPH_NOSNAP;
}
