
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FPU_REG ;


 int FPU_stack_underflow () ;
 int TAG_Empty ;
 int clear_C1 () ;
 int setpositive (int *) ;

__attribute__((used)) static void fabs(FPU_REG *st0_ptr, u_char st0tag)
{
 if (st0tag ^ TAG_Empty) {
  setpositive(st0_ptr);
  clear_C1();
 } else
  FPU_stack_underflow();
}
