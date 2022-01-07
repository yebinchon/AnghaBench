
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_2__ {char* snap_names; struct ceph_snap_context* snapc; } ;
struct rbd_device {TYPE_1__ header; } ;
struct ceph_snap_context {size_t num_snaps; int * snaps; } ;


 int CEPH_NOSNAP ;
 int strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static u64 rbd_v1_snap_id_by_name(struct rbd_device *rbd_dev, const char *name)
{
 struct ceph_snap_context *snapc = rbd_dev->header.snapc;
 const char *snap_name;
 u32 which = 0;



 snap_name = rbd_dev->header.snap_names;
 while (which < snapc->num_snaps) {
  if (!strcmp(name, snap_name))
   return snapc->snaps[which];
  snap_name += strlen(snap_name) + 1;
  which++;
 }
 return CEPH_NOSNAP;
}
