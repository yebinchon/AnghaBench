
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int SPRN_COUNTA ;
 int atomic_read (int *) ;
 int instruction_counter ;
 unsigned long mfspr (int ) ;

__attribute__((used)) static s64 get_insn_ctr(void)
{
 int ctr;
 unsigned long counta;

 do {
  ctr = atomic_read(&instruction_counter);
  counta = mfspr(SPRN_COUNTA);
 } while (ctr != atomic_read(&instruction_counter));

 return ((s64)ctr << 16) | (counta >> 16);
}
