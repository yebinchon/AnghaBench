
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;
struct TYPE_4__ {scalar_t__ op; } ;


 scalar_t__ CLOSURE_CREATE ;

int block_is_funcdef(block b) {
  if (b.first != ((void*)0) && b.first->op == CLOSURE_CREATE)
    return 1;
  return 0;
}
