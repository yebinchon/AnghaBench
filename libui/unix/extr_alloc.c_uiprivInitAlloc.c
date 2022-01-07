
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocations ;
 int g_ptr_array_new () ;

void uiprivInitAlloc(void)
{
 allocations = g_ptr_array_new();
}
