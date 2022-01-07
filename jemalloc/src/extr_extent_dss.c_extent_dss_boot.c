
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOMIC_RELAXED ;
 int atomic_store_b (int *,int,int ) ;
 int atomic_store_p (int *,void*,int ) ;
 int cassert (int ) ;
 void* dss_base ;
 int dss_exhausted ;
 int dss_extending ;
 int dss_max ;
 void* extent_dss_sbrk (int ) ;
 int have_dss ;

void
extent_dss_boot(void) {
 cassert(have_dss);

 dss_base = extent_dss_sbrk(0);
 atomic_store_b(&dss_extending, 0, ATOMIC_RELAXED);
 atomic_store_b(&dss_exhausted, dss_base == (void *)-1, ATOMIC_RELAXED);
 atomic_store_p(&dss_max, dss_base, ATOMIC_RELAXED);
}
