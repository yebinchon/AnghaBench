
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BASE (void*) ;
 scalar_t__ FALSE ;
 int allocations ;
 int g_free (void*) ;
 scalar_t__ g_ptr_array_remove (int ,void*) ;
 int uiprivImplBug (char*,...) ;

void uiprivFree(void *p)
{
 if (p == ((void*)0))
  uiprivImplBug("attempt to uiprivFree(NULL)");
 p = BASE(p);
 g_free(p);
 if (g_ptr_array_remove(allocations, p) == FALSE)
  uiprivImplBug("%p not found in allocations array in uiprivFree()", p);
}
