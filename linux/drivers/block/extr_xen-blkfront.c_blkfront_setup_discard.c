
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkfront_info {int feature_discard; unsigned int discard_granularity; unsigned int discard_alignment; int feature_secdiscard; TYPE_1__* xbdev; } ;
struct TYPE_2__ {int otherend; } ;


 int XBT_NIL ;
 int xenbus_gather (int ,int ,char*,char*,unsigned int*,char*,char*,unsigned int*,int *) ;
 int xenbus_read_unsigned (int ,char*,int ) ;

__attribute__((used)) static void blkfront_setup_discard(struct blkfront_info *info)
{
 int err;
 unsigned int discard_granularity;
 unsigned int discard_alignment;

 info->feature_discard = 1;
 err = xenbus_gather(XBT_NIL, info->xbdev->otherend,
  "discard-granularity", "%u", &discard_granularity,
  "discard-alignment", "%u", &discard_alignment,
  ((void*)0));
 if (!err) {
  info->discard_granularity = discard_granularity;
  info->discard_alignment = discard_alignment;
 }
 info->feature_secdiscard =
  !!xenbus_read_unsigned(info->xbdev->otherend, "discard-secure",
           0);
}
