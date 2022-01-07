
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int lazy_init_name_hash (struct index_state*) ;
 int lazy_nr_dir_threads ;
 int lazy_try_threaded ;

int test_lazy_init_name_hash(struct index_state *istate, int try_threaded)
{
 lazy_nr_dir_threads = 0;
 lazy_try_threaded = try_threaded;

 lazy_init_name_hash(istate);

 return lazy_nr_dir_threads;
}
