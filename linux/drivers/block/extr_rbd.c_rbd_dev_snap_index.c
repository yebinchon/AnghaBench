
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {struct ceph_snap_context* snapc; } ;
struct rbd_device {TYPE_1__ header; } ;
struct ceph_snap_context {int * snaps; int num_snaps; } ;
typedef int snap_id ;


 int BAD_SNAP_INDEX ;
 int * bsearch (int *,int **,int ,int,int ) ;
 int snapid_compare_reverse ;

__attribute__((used)) static u32 rbd_dev_snap_index(struct rbd_device *rbd_dev, u64 snap_id)
{
 struct ceph_snap_context *snapc = rbd_dev->header.snapc;
 u64 *found;

 found = bsearch(&snap_id, &snapc->snaps, snapc->num_snaps,
    sizeof (snap_id), snapid_compare_reverse);

 return found ? (u32)(found - &snapc->snaps[0]) : BAD_SNAP_INDEX;
}
