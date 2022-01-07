
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nstime_t ;
typedef int extent_t ;


 int extent_prof_alloc_time_get (int const*) ;

nstime_t
large_prof_alloc_time_get(const extent_t *extent) {
 return extent_prof_alloc_time_get(extent);
}
