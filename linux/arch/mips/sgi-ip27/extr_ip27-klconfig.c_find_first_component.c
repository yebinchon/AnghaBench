
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lboard_t ;
typedef int klinfo_t ;


 int * find_component (int *,int *,unsigned char) ;

klinfo_t *find_first_component(lboard_t *brd, unsigned char struct_type)
{
 return find_component(brd, (klinfo_t *)((void*)0), struct_type);
}
