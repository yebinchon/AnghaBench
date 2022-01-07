
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {int type; int size; int buf; } ;


 int FREE_AND_NULL (int ) ;




void grep_source_clear_data(struct grep_source *gs)
{
 switch (gs->type) {
 case 129:
 case 128:
  FREE_AND_NULL(gs->buf);
  gs->size = 0;
  break;
 case 130:

  break;
 }
}
