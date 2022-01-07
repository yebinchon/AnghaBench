
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct RBasic {int dummy; } ;
struct TYPE_7__ {int arena_err; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_8__ {scalar_t__ arena_idx; int arena_capa; struct RBasic** arena; } ;
typedef TYPE_2__ mrb_gc ;


 scalar_t__ MRB_GC_ARENA_SIZE ;
 int mrb_exc_raise (TYPE_1__*,int ) ;
 int mrb_obj_value (int ) ;
 scalar_t__ mrb_realloc (TYPE_1__*,struct RBasic**,int) ;

__attribute__((used)) static void
gc_protect(mrb_state *mrb, mrb_gc *gc, struct RBasic *p)
{







  if (gc->arena_idx >= gc->arena_capa) {

    gc->arena_capa = (int)(gc->arena_capa * 3 / 2);
    gc->arena = (struct RBasic**)mrb_realloc(mrb, gc->arena, sizeof(struct RBasic*)*gc->arena_capa);
  }

  gc->arena[gc->arena_idx++] = p;
}
