
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct RBasic {int dummy; } ;
struct TYPE_6__ {int arena_capa; struct RBasic** arena; } ;
struct TYPE_5__ {TYPE_2__ gc; } ;
typedef TYPE_1__ mrb_state ;
typedef TYPE_2__ mrb_gc ;


 int MRB_GC_ARENA_SIZE ;
 scalar_t__ mrb_realloc (TYPE_1__*,struct RBasic**,int) ;

__attribute__((used)) static void
mrb_gc_arena_shrink(mrb_state *mrb, int idx)
{
  mrb_gc *gc = &mrb->gc;
  int capa = gc->arena_capa;

  if (idx < capa / 4) {
    capa >>= 2;
    if (capa < MRB_GC_ARENA_SIZE) {
      capa = MRB_GC_ARENA_SIZE;
    }
    if (capa != gc->arena_capa) {
      gc->arena = (struct RBasic**)mrb_realloc(mrb, gc->arena, sizeof(struct RBasic*)*capa);
      gc->arena_capa = capa;
    }
  }
}
