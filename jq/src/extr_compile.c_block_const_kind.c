
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int jv_kind ;
struct TYPE_8__ {TYPE_2__* first; } ;
typedef TYPE_3__ block ;
struct TYPE_6__ {int constant; } ;
struct TYPE_7__ {TYPE_1__ imm; } ;


 int assert (int ) ;
 int block_is_const (TYPE_3__) ;
 int jv_get_kind (int ) ;

jv_kind block_const_kind(block b) {
  assert(block_is_const(b));
  return jv_get_kind(b.first->imm.constant);
}
