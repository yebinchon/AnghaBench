
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_REALLOC (long long,long long) ;
 int assert (void*) ;
 void* realloc (void*,long long) ;

__attribute__((used)) static inline void *zzrealloc (void *p, long long x, long long y) {
  void *r = realloc (p, y);
  assert (r);
  ADD_REALLOC (x, y);
  return r;
}
