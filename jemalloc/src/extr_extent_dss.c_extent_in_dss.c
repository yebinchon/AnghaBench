
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOMIC_ACQUIRE ;
 int atomic_load_p (int *,int ) ;
 int cassert (int ) ;
 int dss_max ;
 int extent_in_dss_helper (void*,int ) ;
 int have_dss ;

bool
extent_in_dss(void *addr) {
 cassert(have_dss);

 return extent_in_dss_helper(addr, atomic_load_p(&dss_max,
     ATOMIC_ACQUIRE));
}
