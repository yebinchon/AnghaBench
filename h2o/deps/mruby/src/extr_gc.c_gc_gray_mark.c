
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_context {size_t stack; size_t stbase; size_t stend; size_t eidx; int * ci; int * cibase; int status; } ;
struct RObject {int dummy; } ;
struct RHash {int dummy; } ;
struct RFiber {struct mrb_context* cxt; } ;
struct RClass {int dummy; } ;
struct RBasic {int tt; } ;
struct RArray {int dummy; } ;
typedef int mrb_state ;
typedef int mrb_gc ;
typedef int mrb_callinfo ;


 size_t ARY_LEN (struct RArray*) ;
 size_t MRB_ENV_STACK_LEN (struct RBasic*) ;
 int MRB_FIBER_TERMINATED ;
 size_t ci_nregs (int *) ;
 int gc_mark_children (int *,int *,struct RBasic*) ;
 size_t mrb_gc_mark_hash_size (int *,struct RHash*) ;
 size_t mrb_gc_mark_iv_size (int *,struct RObject*) ;
 size_t mrb_gc_mark_mt_size (int *,struct RClass*) ;

__attribute__((used)) static size_t
gc_gray_mark(mrb_state *mrb, mrb_gc *gc, struct RBasic *obj)
{
  size_t children = 0;

  gc_mark_children(mrb, gc, obj);

  switch (obj->tt) {
  case 133:
    children++;
    break;

  case 139:
  case 128:
  case 132:
    {
      struct RClass *c = (struct RClass*)obj;

      children += mrb_gc_mark_iv_size(mrb, (struct RObject*)obj);
      children += mrb_gc_mark_mt_size(mrb, c);
      children++;
    }
    break;

  case 131:
  case 138:
  case 136:
    children += mrb_gc_mark_iv_size(mrb, (struct RObject*)obj);
    break;

  case 137:
    children += MRB_ENV_STACK_LEN(obj);
    break;

  case 135:
    {
      struct mrb_context *c = ((struct RFiber*)obj)->cxt;
      size_t i;
      mrb_callinfo *ci;

      if (!c || c->status == MRB_FIBER_TERMINATED) break;


      i = c->stack - c->stbase;

      if (c->ci) {
        i += ci_nregs(c->ci);
      }
      if (c->stbase + i > c->stend) i = c->stend - c->stbase;
      children += i;


      children += c->eidx;


      if (c->cibase) {
        for (i=0, ci = c->cibase; ci <= c->ci; i++, ci++)
          ;
      }
      children += i;
    }
    break;

  case 140:
    {
      struct RArray *a = (struct RArray*)obj;
      children += ARY_LEN(a);
    }
    break;

  case 134:
    children += mrb_gc_mark_iv_size(mrb, (struct RObject*)obj);
    children += mrb_gc_mark_hash_size(mrb, (struct RHash*)obj);
    break;

  case 130:
  case 129:
    children+=2;
    break;

  default:
    break;
  }
  return children;
}
