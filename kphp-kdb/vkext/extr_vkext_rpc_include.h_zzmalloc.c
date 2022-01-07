
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_CNT (void* (*) (long long)) ;
 int ADD_MALLOC (long long) ;
 int END_TIMER (void* (*) (long long)) ;
 int START_TIMER (void* (*) (long long)) ;
 int assert (void*) ;
 void* malloc (long long) ;

__attribute__((used)) static inline void *zzmalloc (long long x) {
  ADD_CNT (malloc);
  START_TIMER (malloc);
  void *r = malloc (x);
  assert (r);
  ADD_MALLOC (x);
  END_TIMER (malloc);
  return r;
}
