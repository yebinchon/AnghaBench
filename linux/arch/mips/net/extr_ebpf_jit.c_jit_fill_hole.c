
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BRK_BUG ;
 int uasm_i_break (int **,int ) ;

__attribute__((used)) static void jit_fill_hole(void *area, unsigned int size)
{
 u32 *p;


 for (p = area; size >= sizeof(u32); size -= sizeof(u32))
  uasm_i_break(&p, BRK_BUG);
}
