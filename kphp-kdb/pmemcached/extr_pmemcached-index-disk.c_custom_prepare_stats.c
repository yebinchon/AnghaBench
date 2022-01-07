
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats_buffer_t ;


 int allocated_metafile_bytes ;
 int expired_aio_queries ;
 int metafile_number ;
 int metafiles_cache_miss ;
 int metafiles_cache_ok ;
 int metafiles_load_errors ;
 int metafiles_load_success ;
 int metafiles_loaded ;
 int metafiles_unload_LRU ;
 int sb_printf (int *,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int tot_aio_loaded_bytes ;
 int tot_records ;
 int use_query_fails ;

void custom_prepare_stats (stats_buffer_t *sb) {
  sb_printf (sb,
    "total_index_entries\t%lld\n"
    "total_metafiles\t%d\n"
    "metafiles_loaded\t%d\n"
    "metafiles_allocated_bytes\t%lld\n"
    "metafiles_unloaded_LRU\t%lld\n"
    "metafiles_load_errors\t%lld\n"
    "metafiles_load_success\t%lld\n"
    "metafiles_load_timeout\t%lld\n"
    "metafiles_total_loaded_bytes\t%lld\n"
    "metafiles_LRU_fails\t%d\n"
    "metafiles_cache_miss\t%lld\n"
    "metafiles_cache_ok\t%lld\n",
    tot_records,
    metafile_number,
    metafiles_loaded,
    allocated_metafile_bytes,
    metafiles_unload_LRU,
    metafiles_load_errors,
    metafiles_load_success,
    expired_aio_queries,
    tot_aio_loaded_bytes,
    use_query_fails,
    metafiles_cache_miss,
    metafiles_cache_ok);
}
