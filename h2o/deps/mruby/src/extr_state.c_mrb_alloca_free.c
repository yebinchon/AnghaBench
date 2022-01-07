
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct alloca_header {struct alloca_header* next; } ;
struct TYPE_4__ {struct alloca_header* mems; } ;
typedef TYPE_1__ mrb_state ;


 int mrb_free (TYPE_1__*,struct alloca_header*) ;

__attribute__((used)) static void
mrb_alloca_free(mrb_state *mrb)
{
  struct alloca_header *p;
  struct alloca_header *tmp;

  if (mrb == ((void*)0)) return;
  p = mrb->mems;

  while (p) {
    tmp = p;
    p = p->next;
    mrb_free(mrb, tmp);
  }
}
