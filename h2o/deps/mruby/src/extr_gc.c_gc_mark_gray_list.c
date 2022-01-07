
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_6__ {TYPE_2__* gray_list; } ;
typedef TYPE_1__ mrb_gc ;
struct TYPE_7__ {struct TYPE_7__* gcnext; } ;


 int gc_mark_children (int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ is_gray (TYPE_2__*) ;

__attribute__((used)) static void
gc_mark_gray_list(mrb_state *mrb, mrb_gc *gc) {
  while (gc->gray_list) {
    if (is_gray(gc->gray_list))
      gc_mark_children(mrb, gc, gc->gray_list);
    else
      gc->gray_list = gc->gray_list->gcnext;
  }
}
