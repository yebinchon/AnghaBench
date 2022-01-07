
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_plug {int dummy; } ;
struct TYPE_2__ {struct blk_plug* plug; } ;


 int blk_flush_plug_list (struct blk_plug*,int) ;
 TYPE_1__* current ;

void blk_finish_plug(struct blk_plug *plug)
{
 if (plug != current->plug)
  return;
 blk_flush_plug_list(plug, 0);

 current->plug = ((void*)0);
}
