
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_8__ {int stack_err; TYPE_1__* c; } ;
typedef TYPE_2__ mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_7__ {int * stbase; int * stend; int * stack; } ;


 scalar_t__ MRB_STACK_GROWTH ;
 size_t MRB_STACK_MAX ;
 int envadjust (TYPE_2__*,int *,int *,size_t) ;
 int mrb_exc_raise (TYPE_2__*,int ) ;
 int mrb_obj_value (int ) ;
 scalar_t__ mrb_realloc (TYPE_2__*,int *,int) ;
 int stack_clear (int *,size_t) ;

__attribute__((used)) static void
stack_extend_alloc(mrb_state *mrb, mrb_int room)
{
  mrb_value *oldbase = mrb->c->stbase;
  mrb_value *newstack;
  size_t oldsize = mrb->c->stend - mrb->c->stbase;
  size_t size = oldsize;
  size_t off = mrb->c->stack - mrb->c->stbase;

  if (off > size) size = off;
  if (room <= MRB_STACK_GROWTH)
    size += MRB_STACK_GROWTH;
  else
    size += room;


  newstack = (mrb_value *)mrb_realloc(mrb, mrb->c->stbase, sizeof(mrb_value) * size);
  if (newstack == ((void*)0)) {
    mrb_exc_raise(mrb, mrb_obj_value(mrb->stack_err));
  }
  stack_clear(&(newstack[oldsize]), size - oldsize);
  envadjust(mrb, oldbase, newstack, oldsize);
  mrb->c->stbase = newstack;
  mrb->c->stack = mrb->c->stbase + off;
  mrb->c->stend = mrb->c->stbase + size;



  if (size > MRB_STACK_MAX) {
    mrb_exc_raise(mrb, mrb_obj_value(mrb->stack_err));
  }
}
