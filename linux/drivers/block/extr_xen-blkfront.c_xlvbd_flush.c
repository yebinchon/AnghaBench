
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkfront_info {scalar_t__ max_indirect_segments; scalar_t__ feature_persistent; TYPE_1__* gd; scalar_t__ feature_fua; scalar_t__ feature_flush; int rq; } ;
struct TYPE_2__ {int disk_name; } ;


 int blk_queue_write_cache (int ,int,int) ;
 int flush_info (struct blkfront_info*) ;
 int pr_info (char*,int ,int ,char*,char*,char*,char*) ;

__attribute__((used)) static void xlvbd_flush(struct blkfront_info *info)
{
 blk_queue_write_cache(info->rq, info->feature_flush ? 1 : 0,
         info->feature_fua ? 1 : 0);
 pr_info("blkfront: %s: %s %s %s %s %s\n",
  info->gd->disk_name, flush_info(info),
  "persistent grants:", info->feature_persistent ?
  "enabled;" : "disabled;", "indirect descriptors:",
  info->max_indirect_segments ? "enabled;" : "disabled;");
}
