
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ capa; } ;
struct TYPE_6__ {char* ptr; TYPE_1__ aux; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_3__ heap; } ;
struct RString {int flags; TYPE_2__ as; } ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_ARGUMENT_ERROR ;
 size_t MRB_INT_MAX ;
 int MRB_STR_NOFREE ;
 struct RString* mrb_obj_alloc_string (int *) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static struct RString*
str_new_static(mrb_state *mrb, const char *p, size_t len)
{
  struct RString *s;

  if (len >= MRB_INT_MAX) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "string size too big");
  }
  s = mrb_obj_alloc_string(mrb);
  s->as.heap.len = (mrb_int)len;
  s->as.heap.aux.capa = 0;
  s->as.heap.ptr = (char *)p;
  s->flags = MRB_STR_NOFREE;

  return s;
}
