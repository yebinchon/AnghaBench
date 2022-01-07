
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int idx; int bg; int fg; int item; struct TYPE_6__* pair; } ;
typedef TYPE_1__ GColors ;
typedef TYPE_1__ GColorPair ;


 int COLOR_NORMAL ;
 int COLOR_WHITE ;
 void* color_list ;
 int init_pair (int,int ,int) ;
 void* list_create (TYPE_1__*) ;
 TYPE_1__* new_gcolorpair () ;
 TYPE_1__* new_gcolors () ;
 void* pair_list ;

void
set_normal_color (void)
{
  GColorPair *pair = new_gcolorpair ();
  GColors *color = new_gcolors ();

  pair->idx = 1;
  pair->fg = COLOR_WHITE;
  pair->bg = -1;

  color->pair = pair;
  color->item = COLOR_NORMAL;

  pair_list = list_create (pair);
  color_list = list_create (color);

  init_pair (pair->idx, pair->fg, pair->bg);
}
