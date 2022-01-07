
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int capa; } ;
struct TYPE_10__ {scalar_t__ len; TYPE_1__ aux; int * ptr; } ;
struct TYPE_11__ {TYPE_2__ heap; } ;
struct RArray {TYPE_3__ as; } ;
typedef int mrb_value ;
struct TYPE_12__ {int array_class; } ;
typedef TYPE_4__ mrb_state ;
typedef int mrb_int ;


 int ARY_MAX_SIZE ;
 int ARY_SET_EMBED_LEN (struct RArray*,int ) ;
 int E_ARGUMENT_ERROR ;
 int MRB_ARY_EMBED_LEN_MAX ;
 int MRB_TT_ARRAY ;
 scalar_t__ mrb_malloc (TYPE_4__*,size_t) ;
 scalar_t__ mrb_obj_alloc (TYPE_4__*,int ,int ) ;
 int mrb_raise (TYPE_4__*,int ,char*) ;

__attribute__((used)) static struct RArray*
ary_new_capa(mrb_state *mrb, mrb_int capa)
{
  struct RArray *a;
  size_t blen;

  if (capa > ARY_MAX_SIZE) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "array size too big");
  }
  blen = capa * sizeof(mrb_value);

  a = (struct RArray*)mrb_obj_alloc(mrb, MRB_TT_ARRAY, mrb->array_class);
  if (capa <= MRB_ARY_EMBED_LEN_MAX) {
    ARY_SET_EMBED_LEN(a, 0);
  }
  else {
    a->as.heap.ptr = (mrb_value *)mrb_malloc(mrb, blen);
    a->as.heap.aux.capa = capa;
    a->as.heap.len = 0;
  }

  return a;
}
