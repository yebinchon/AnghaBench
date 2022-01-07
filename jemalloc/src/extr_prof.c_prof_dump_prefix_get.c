
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int malloc_mutex_assert_owner (int *,int *) ;
 char const* opt_prof_prefix ;
 int prof_dump_filename_mtx ;
 char const* prof_dump_prefix ;

__attribute__((used)) static const char *
prof_dump_prefix_get(tsdn_t* tsdn) {
 malloc_mutex_assert_owner(tsdn, &prof_dump_filename_mtx);

 return prof_dump_prefix == ((void*)0) ? opt_prof_prefix : prof_dump_prefix;
}
