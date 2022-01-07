
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *set_exception_table_vec(unsigned int vec, void *handler)
{
 extern void *exception_handling_table[];
 void *old_handler;

 old_handler = exception_handling_table[vec];
 exception_handling_table[vec] = handler;
 return old_handler;
}
