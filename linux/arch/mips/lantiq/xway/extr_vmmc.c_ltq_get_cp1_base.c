
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* cp1_base ;
 int panic (char*) ;

unsigned int *ltq_get_cp1_base(void)
{
 if (!cp1_base)
  panic("no cp1 base was set\n");

 return cp1_base;
}
