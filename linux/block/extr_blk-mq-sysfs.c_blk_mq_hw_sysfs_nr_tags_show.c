
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_mq_hw_ctx {TYPE_1__* tags; } ;
typedef int ssize_t ;
struct TYPE_2__ {int nr_tags; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t blk_mq_hw_sysfs_nr_tags_show(struct blk_mq_hw_ctx *hctx,
         char *page)
{
 return sprintf(page, "%u\n", hctx->tags->nr_tags);
}
