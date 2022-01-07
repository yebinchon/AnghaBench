
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int * index; scalar_t__ last_len; int * lastseg; int * rootseg; scalar_t__ size; } ;
typedef TYPE_1__ htable ;


 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static htable*
ht_new(mrb_state *mrb)
{
  htable *t;

  t = (htable*)mrb_malloc(mrb, sizeof(htable));
  t->size = 0;
  t->rootseg = ((void*)0);
  t->lastseg = ((void*)0);
  t->last_len = 0;
  t->index = ((void*)0);

  return t;
}
