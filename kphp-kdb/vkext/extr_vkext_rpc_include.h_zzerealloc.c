
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_EREALLOC (long long,long long) ;
 int assert (void*) ;
 void* erealloc (void*,long long) ;

__attribute__((used)) static inline void *zzerealloc (void *p, long long x, long long y) {
  void *r = erealloc (p, y);
  assert (r);
  ADD_EREALLOC (x, y);
  return r;
}
