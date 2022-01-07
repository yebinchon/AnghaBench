
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_CNT (int ) ;
 int ADD_EFREE (long long) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int efree (void*) ;
 int emalloc ;

__attribute__((used)) static inline void zzefree (void *p, long long x) {
  ADD_CNT (emalloc);
  START_TIMER (emalloc);
  efree (p);
  END_TIMER (emalloc);
  ADD_EFREE (x);
}
