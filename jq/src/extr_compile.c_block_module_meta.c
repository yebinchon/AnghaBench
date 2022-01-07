
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jv ;
struct TYPE_7__ {TYPE_2__* first; } ;
typedef TYPE_3__ block ;
struct TYPE_5__ {int constant; } ;
struct TYPE_6__ {scalar_t__ op; TYPE_1__ imm; } ;


 scalar_t__ MODULEMETA ;
 int jv_copy (int ) ;
 int jv_null () ;

jv block_module_meta(block b) {
  if (b.first != ((void*)0) && b.first->op == MODULEMETA)
    return jv_copy(b.first->imm.constant);
  return jv_null();
}
