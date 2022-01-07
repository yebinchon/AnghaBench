
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 void* BASE (void*) ;
 void* DATA (void*) ;
 scalar_t__ EXTRA ;
 scalar_t__ FALSE ;
 size_t* SIZE (void*) ;
 int allocations ;
 int g_ptr_array_add (int ,void*) ;
 scalar_t__ g_ptr_array_remove (int ,void*) ;
 void* g_realloc (void*,scalar_t__) ;
 int memset (int *,int ,size_t) ;
 void* uiprivAlloc (size_t,char const*) ;
 int uiprivImplBug (char*,void*) ;

void *uiprivRealloc(void *p, size_t new, const char *type)
{
 void *out;
 size_t *s;

 if (p == ((void*)0))
  return uiprivAlloc(new, type);
 p = BASE(p);
 out = g_realloc(p, EXTRA + new);
 s = SIZE(out);
 if (new > *s)
  memset(((uint8_t *) DATA(out)) + *s, 0, new - *s);
 *s = new;
 if (g_ptr_array_remove(allocations, p) == FALSE)
  uiprivImplBug("%p not found in allocations array in uiprivRealloc()", p);
 g_ptr_array_add(allocations, out);
 return DATA(out);
}
