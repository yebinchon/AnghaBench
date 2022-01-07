
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct load_cache_entries_thread_data {int offset; char const* mmap; int ieot_start; int ieot_blocks; scalar_t__ consumed; int ce_mem_pool; int pthread; struct index_entry_offset_table* ieot; struct index_state* istate; } ;
struct index_state {int version; int ce_mem_pool; scalar_t__ name_hash_initialized; } ;
struct index_entry_offset_table {int nr; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ nr; } ;


 int BUG (char*) ;
 int DIV_ROUND_UP (int,int) ;
 int _ (char*) ;
 int die (int ,int ) ;
 int estimate_cache_size (size_t,int) ;
 int estimate_cache_size_from_compressed (int) ;
 int free (struct load_cache_entries_thread_data*) ;
 int load_cache_entries_thread ;
 int mem_pool_combine (int ,int ) ;
 int mem_pool_init (int *,int ) ;
 int pthread_create (int *,int *,int ,struct load_cache_entries_thread_data*) ;
 int pthread_join (int ,int *) ;
 int strerror (int) ;
 struct load_cache_entries_thread_data* xcalloc (int,int) ;

__attribute__((used)) static unsigned long load_cache_entries_threaded(struct index_state *istate, const char *mmap, size_t mmap_size,
       int nr_threads, struct index_entry_offset_table *ieot)
{
 int i, offset, ieot_blocks, ieot_start, err;
 struct load_cache_entries_thread_data *data;
 unsigned long consumed = 0;


 if (istate->name_hash_initialized)
  BUG("the name hash isn't thread safe");

 mem_pool_init(&istate->ce_mem_pool, 0);


 if (nr_threads > ieot->nr)
  nr_threads = ieot->nr;
 data = xcalloc(nr_threads, sizeof(*data));

 offset = ieot_start = 0;
 ieot_blocks = DIV_ROUND_UP(ieot->nr, nr_threads);
 for (i = 0; i < nr_threads; i++) {
  struct load_cache_entries_thread_data *p = &data[i];
  int nr, j;

  if (ieot_start + ieot_blocks > ieot->nr)
   ieot_blocks = ieot->nr - ieot_start;

  p->istate = istate;
  p->offset = offset;
  p->mmap = mmap;
  p->ieot = ieot;
  p->ieot_start = ieot_start;
  p->ieot_blocks = ieot_blocks;


  nr = 0;
  for (j = p->ieot_start; j < p->ieot_start + p->ieot_blocks; j++)
   nr += p->ieot->entries[j].nr;
  if (istate->version == 4) {
   mem_pool_init(&p->ce_mem_pool,
    estimate_cache_size_from_compressed(nr));
  } else {
   mem_pool_init(&p->ce_mem_pool,
    estimate_cache_size(mmap_size, nr));
  }

  err = pthread_create(&p->pthread, ((void*)0), load_cache_entries_thread, p);
  if (err)
   die(_("unable to create load_cache_entries thread: %s"), strerror(err));


  for (j = 0; j < ieot_blocks; j++)
   offset += ieot->entries[ieot_start + j].nr;
  ieot_start += ieot_blocks;
 }

 for (i = 0; i < nr_threads; i++) {
  struct load_cache_entries_thread_data *p = &data[i];

  err = pthread_join(p->pthread, ((void*)0));
  if (err)
   die(_("unable to join load_cache_entries thread: %s"), strerror(err));
  mem_pool_combine(istate->ce_mem_pool, p->ce_mem_pool);
  consumed += p->consumed;
 }

 free(data);

 return consumed;
}
