
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkfront_info {int feature_flush; int feature_fua; int feature_persistent; unsigned int max_indirect_segments; TYPE_1__* xbdev; } ;
struct TYPE_2__ {int otherend; } ;


 unsigned int BLKIF_MAX_SEGMENTS_PER_REQUEST ;
 int HZ ;
 int blkfront_mutex ;
 int blkfront_setup_discard (struct blkfront_info*) ;
 int blkfront_work ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;
 unsigned int xen_blkif_max_segments ;
 int xenbus_read_unsigned (int ,char*,int ) ;

__attribute__((used)) static void blkfront_gather_backend_features(struct blkfront_info *info)
{
 unsigned int indirect_segments;

 info->feature_flush = 0;
 info->feature_fua = 0;
 if (xenbus_read_unsigned(info->xbdev->otherend, "feature-barrier", 0)) {
  info->feature_flush = 1;
  info->feature_fua = 1;
 }





 if (xenbus_read_unsigned(info->xbdev->otherend, "feature-flush-cache",
     0)) {
  info->feature_flush = 1;
  info->feature_fua = 0;
 }

 if (xenbus_read_unsigned(info->xbdev->otherend, "feature-discard", 0))
  blkfront_setup_discard(info);

 info->feature_persistent =
  !!xenbus_read_unsigned(info->xbdev->otherend,
           "feature-persistent", 0);

 indirect_segments = xenbus_read_unsigned(info->xbdev->otherend,
     "feature-max-indirect-segments", 0);
 if (indirect_segments > xen_blkif_max_segments)
  indirect_segments = xen_blkif_max_segments;
 if (indirect_segments <= BLKIF_MAX_SEGMENTS_PER_REQUEST)
  indirect_segments = 0;
 info->max_indirect_segments = indirect_segments;

 if (info->feature_persistent) {
  mutex_lock(&blkfront_mutex);
  schedule_delayed_work(&blkfront_work, HZ * 10);
  mutex_unlock(&blkfront_mutex);
 }
}
