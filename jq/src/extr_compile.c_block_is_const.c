
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;
struct TYPE_5__ {scalar_t__ op; } ;


 scalar_t__ LOADK ;
 scalar_t__ PUSHK_UNDER ;
 scalar_t__ block_is_single (TYPE_2__) ;

int block_is_const(block b) {
  return (block_is_single(b) && (b.first->op == LOADK || b.first->op == PUSHK_UNDER));
}
