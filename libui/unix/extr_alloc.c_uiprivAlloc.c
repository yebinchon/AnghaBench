
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* DATA (void*) ;
 scalar_t__ EXTRA ;
 size_t* SIZE (void*) ;
 char const** TYPE (void*) ;
 int allocations ;
 void* g_malloc0 (scalar_t__) ;
 int g_ptr_array_add (int ,void*) ;

void *uiprivAlloc(size_t size, const char *type)
{
 void *out;

 out = g_malloc0(EXTRA + size);
 *SIZE(out) = size;
 *TYPE(out) = type;
 g_ptr_array_add(allocations, out);
 return DATA(out);
}
