
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ op; } ;
typedef TYPE_1__ inst ;
struct TYPE_5__ {int flags; } ;


 scalar_t__ MODULEMETA ;
 TYPE_2__* opcode_describe (scalar_t__) ;

__attribute__((used)) static int inst_is_binder(inst *i, int bindflags) {
  return !((opcode_describe(i->op)->flags & bindflags) != bindflags && i->op != MODULEMETA);
}
