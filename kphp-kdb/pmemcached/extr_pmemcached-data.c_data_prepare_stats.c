
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats_buffer_t ;


 scalar_t__ HASH_TABLE_SIZE ;
 int cache_deletes ;
 scalar_t__ cache_free ;
 int cache_miss ;
 int cache_ok ;
 int cache_size ;
 int cache_update ;
 int entry_memory ;
 int get_entry_cnt () ;
 int init_memory ;
 int memory_for_cache ;
 int memory_for_entries ;
 int memory_for_metafiles ;
 int sb_printf (int *,char*,int ,int ,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ) ;

void data_prepare_stats (stats_buffer_t *sb) {
  sb_printf (sb,
    "limit_entries_memory\t%lld\n"
    "limit_cache_memory\t%lld\n"
    "limit_metafiles_memory\t%lld\n"
    "cache_number\t%d\n"
    "cache_free\t%d\n"
    "cache_size\t%lld\n"
    "cache_ok\t%lld\n"
    "cache_updates\t%lld\n"
    "cache_miss\t%lld\n"
    "cache_deletes\t%lld\n"
    "entry_number\t%d\n"
    "entry_size\t%lld\n"
    "init_size\t%lld\n",
    memory_for_entries,
    memory_for_cache,
    memory_for_metafiles,
    HASH_TABLE_SIZE - cache_free,
    cache_free,
    cache_size,
    cache_ok,
    cache_update,
    cache_miss,
    cache_deletes,
    get_entry_cnt (),
    entry_memory,
    init_memory);
}
