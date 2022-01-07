
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int prof_tctx_t ;
typedef int extent_t ;


 int large_prof_tctx_set (int *,int *,int *) ;

void
large_prof_tctx_reset(tsdn_t *tsdn, extent_t *extent) {
 large_prof_tctx_set(tsdn, extent, (prof_tctx_t *)(uintptr_t)1U);
}
