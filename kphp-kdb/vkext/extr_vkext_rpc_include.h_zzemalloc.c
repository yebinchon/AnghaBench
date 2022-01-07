
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_CNT (void* (*) (long long)) ;
 int ADD_EMALLOC (long long) ;
 int END_TIMER (void* (*) (long long)) ;
 int START_TIMER (void* (*) (long long)) ;
 int assert (void*) ;
 void* emalloc (long long) ;

__attribute__((used)) static inline void *zzemalloc (long long x) {
  ADD_CNT (emalloc);
  START_TIMER (emalloc);
  void *r = emalloc (x);
  END_TIMER (emalloc);
  assert (r);
  ADD_EMALLOC (x);
  return r;
}
