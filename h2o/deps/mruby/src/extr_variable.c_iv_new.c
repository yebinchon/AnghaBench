
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {scalar_t__ last_len; int * rootseg; scalar_t__ size; } ;
typedef TYPE_1__ iv_tbl ;


 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static iv_tbl*
iv_new(mrb_state *mrb)
{
  iv_tbl *t;

  t = (iv_tbl*)mrb_malloc(mrb, sizeof(iv_tbl));
  t->size = 0;
  t->rootseg = ((void*)0);
  t->last_len = 0;

  return t;
}
