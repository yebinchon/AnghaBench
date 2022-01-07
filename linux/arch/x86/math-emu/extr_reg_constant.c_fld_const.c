
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int sigl; } ;
typedef TYPE_1__ FPU_REG ;


 int FPU_settag0 (int ) ;
 int FPU_stack_overflow () ;
 scalar_t__ STACK_OVERFLOW ;
 int clear_C1 () ;
 int push () ;
 int reg_copy (TYPE_1__ const*,TYPE_1__*) ;

__attribute__((used)) static void fld_const(FPU_REG const * c, int adj, u_char tag)
{
 FPU_REG *st_new_ptr;

 if (STACK_OVERFLOW) {
  FPU_stack_overflow();
  return;
 }
 push();
 reg_copy(c, st_new_ptr);
 st_new_ptr->sigl += adj;

 FPU_settag0(tag);
 clear_C1();
}
