
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ priority; scalar_t__ is_alternate; } ;
typedef TYPE_1__ backend_internal ;



__attribute__((used)) static int backend_sort_cmp(const void *a, const void *b)
{
 const backend_internal *backend_a = (const backend_internal *)(a);
 const backend_internal *backend_b = (const backend_internal *)(b);

 if (backend_b->priority == backend_a->priority) {
  if (backend_a->is_alternate)
   return -1;
  if (backend_b->is_alternate)
   return 1;
  return 0;
 }
 return (backend_b->priority - backend_a->priority);
}
