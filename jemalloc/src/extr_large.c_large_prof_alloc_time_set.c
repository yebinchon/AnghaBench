
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nstime_t ;
typedef int extent_t ;


 int extent_prof_alloc_time_set (int *,int ) ;

void
large_prof_alloc_time_set(extent_t *extent, nstime_t t) {
 extent_prof_alloc_time_set(extent, t);
}
