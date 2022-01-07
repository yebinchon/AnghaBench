
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uncached_heap_cmp (void const*,void const*) ;

__attribute__((used)) static int cached_heap_cmp (const void *a, const void *b) {
  return uncached_heap_cmp (b, a);
}
