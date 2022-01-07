
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int mrb_code ;
typedef int codegen_scope ;


 int gen_B (int *,int ) ;
 int genop_2 (int *,int ,int ,int ) ;

__attribute__((used)) static void
genop_3(codegen_scope *s, mrb_code i, uint16_t a, uint16_t b, uint8_t c)
{
  genop_2(s, i, a, b);
  gen_B(s, c);
}
