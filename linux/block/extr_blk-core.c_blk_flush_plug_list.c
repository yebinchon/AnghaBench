
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_plug {int mq_list; } ;


 int blk_mq_flush_plug_list (struct blk_plug*,int) ;
 int flush_plug_callbacks (struct blk_plug*,int) ;
 int list_empty (int *) ;

void blk_flush_plug_list(struct blk_plug *plug, bool from_schedule)
{
 flush_plug_callbacks(plug, from_schedule);

 if (!list_empty(&plug->mq_list))
  blk_mq_flush_plug_list(plug, from_schedule);
}
