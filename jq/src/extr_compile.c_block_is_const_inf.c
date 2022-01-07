
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* first; } ;
typedef TYPE_3__ block ;
struct TYPE_6__ {int constant; } ;
struct TYPE_7__ {scalar_t__ op; TYPE_1__ imm; } ;


 scalar_t__ JV_KIND_NUMBER ;
 scalar_t__ LOADK ;
 scalar_t__ block_is_single (TYPE_3__) ;
 scalar_t__ isinf (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_number_value (int ) ;

int block_is_const_inf(block b) {
  return (block_is_single(b) && b.first->op == LOADK &&
          jv_get_kind(b.first->imm.constant) == JV_KIND_NUMBER &&
          isinf(jv_number_value(b.first->imm.constant)));
}
