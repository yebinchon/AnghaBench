
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int codegen_scope ;


 int emit_B (int *,int,int) ;

__attribute__((used)) static void
emit_S(codegen_scope *s, int pc, uint16_t i)
{
  uint8_t hi = i>>8;
  uint8_t lo = i&0xff;

  emit_B(s, pc, hi);
  emit_B(s, pc+1, lo);
}
