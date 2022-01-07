
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 int GET_CONTEXT (int **,unsigned int) ;
 int UASM_i_ADDU (int **,unsigned int,unsigned int,unsigned int) ;
 int UASM_i_LW (int **,unsigned int,int ,unsigned int) ;
 int build_adjust_context (int **,unsigned int) ;
 int current_cpu_type () ;

void build_get_ptep(u32 **p, unsigned int tmp, unsigned int ptr)
{







 switch (current_cpu_type()) {
 case 128:
  UASM_i_LW(p, ptr, 0, ptr);
  GET_CONTEXT(p, tmp);
  break;

 default:
  GET_CONTEXT(p, tmp);
  UASM_i_LW(p, ptr, 0, ptr);
  break;
 }

 build_adjust_context(p, tmp);
 UASM_i_ADDU(p, ptr, ptr, tmp);
}
