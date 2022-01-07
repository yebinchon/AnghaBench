
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lazy_name_thread_data {int k_start; int k_end; int pthread; struct lazy_name_thread_data* lazy_entries; struct index_state* istate; } ;
struct lazy_entry {int k_start; int k_end; int pthread; struct lazy_entry* lazy_entries; struct index_state* istate; } ;
struct lazy_dir_thread_data {int k_start; int k_end; int pthread; struct lazy_dir_thread_data* lazy_entries; struct index_state* istate; } ;
struct index_state {int cache_nr; } ;


 int DIV_ROUND_UP (int,int) ;
 int HAVE_THREADS ;
 int _ (char*) ;
 int cleanup_dir_mutex () ;
 int die (char*,...) ;
 int free (struct lazy_name_thread_data*) ;
 int init_dir_mutex () ;
 int lazy_dir_thread_proc ;
 int lazy_name_thread_proc ;
 int lazy_nr_dir_threads ;
 int lazy_update_dir_ref_counts (struct index_state*,struct lazy_name_thread_data*) ;
 int pthread_create (int *,int *,int ,struct lazy_name_thread_data*) ;
 int pthread_join (int ,int *) ;
 int strerror (int) ;
 struct lazy_name_thread_data* xcalloc (int,int) ;

__attribute__((used)) static void threaded_lazy_init_name_hash(
 struct index_state *istate)
{
 int err;
 int nr_each;
 int k_start;
 int t;
 struct lazy_entry *lazy_entries;
 struct lazy_dir_thread_data *td_dir;
 struct lazy_name_thread_data *td_name;

 if (!HAVE_THREADS)
  return;

 k_start = 0;
 nr_each = DIV_ROUND_UP(istate->cache_nr, lazy_nr_dir_threads);

 lazy_entries = xcalloc(istate->cache_nr, sizeof(struct lazy_entry));
 td_dir = xcalloc(lazy_nr_dir_threads, sizeof(struct lazy_dir_thread_data));
 td_name = xcalloc(1, sizeof(struct lazy_name_thread_data));

 init_dir_mutex();





 for (t = 0; t < lazy_nr_dir_threads; t++) {
  struct lazy_dir_thread_data *td_dir_t = td_dir + t;
  td_dir_t->istate = istate;
  td_dir_t->lazy_entries = lazy_entries;
  td_dir_t->k_start = k_start;
  k_start += nr_each;
  if (k_start > istate->cache_nr)
   k_start = istate->cache_nr;
  td_dir_t->k_end = k_start;
  err = pthread_create(&td_dir_t->pthread, ((void*)0), lazy_dir_thread_proc, td_dir_t);
  if (err)
   die(_("unable to create lazy_dir thread: %s"), strerror(err));
 }
 for (t = 0; t < lazy_nr_dir_threads; t++) {
  struct lazy_dir_thread_data *td_dir_t = td_dir + t;
  if (pthread_join(td_dir_t->pthread, ((void*)0)))
   die("unable to join lazy_dir_thread");
 }
 td_name->istate = istate;
 td_name->lazy_entries = lazy_entries;
 err = pthread_create(&td_name->pthread, ((void*)0), lazy_name_thread_proc, td_name);
 if (err)
  die(_("unable to create lazy_name thread: %s"), strerror(err));

 lazy_update_dir_ref_counts(istate, lazy_entries);

 err = pthread_join(td_name->pthread, ((void*)0));
 if (err)
  die(_("unable to join lazy_name thread: %s"), strerror(err));

 cleanup_dir_mutex();

 free(td_name);
 free(td_dir);
 free(lazy_entries);
}
