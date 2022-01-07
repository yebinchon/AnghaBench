
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int mrb_code ;
typedef int codegen_scope ;


 int gen_S (int *,int ) ;
 int genop_1 (int *,int ,int ) ;

__attribute__((used)) static void
genop_2S(codegen_scope *s, mrb_code i, uint16_t a, uint16_t b)
{
  genop_1(s, i, a);
  gen_S(s, b);
}
