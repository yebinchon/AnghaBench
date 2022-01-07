
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_6__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;
struct TYPE_7__ {long long* compression_bytes; int* word_list_compression_methods; int left_subtree_size_threshold; } ;


 int AM_GET_MEMORY_USAGE_SELF ;
 int FullVersionStr ;
 TYPE_5__ Header ;
 int SB_BINLOG ;
 int SB_INDEX ;
 int SB_PRINT_I32 (int ) ;
 int SB_PRINT_I64 (int ) ;
 int SB_PRINT_QUERIES (int ) ;
 int SB_PRINT_TIME (int ) ;
 int STATS_BUFF_SIZE ;
 int add_tags_queries ;
 int alloc_tree_nodes ;
 int assign_max_set_rate_calls ;
 int change_many_rates_queries ;
 int change_multiple_rates_set_rate_calls ;
 int creation_date ;
 int del_items ;
 int delete_hash_queries ;
 int delete_hash_query_items ;
 int delete_items_with_hash_queries ;
 int delete_many_rates_mask ;
 int delete_queries ;
 int extended_search_queries ;
 int free_tree_nodes ;
 int get_malloc_memory_used () ;
 int hashlist_assign_max_queries ;
 int hashtags_enabled ;
 int idx_bytes ;
 int idx_hapax_legomena ;
 int idx_items ;
 int idx_items_with_hash ;
 int idx_words ;
 int import_only_mode ;
 int increment_queries ;
 int last_search_query ;
 int list_get_compression_method_description (int) ;
 int listcomp_version ;
 int minor_update_queries ;
 int mod_items ;
 int rebuild_hashmap_calls ;
 int relevance_search_queries ;
 int return_empty_record_on_error ;
 int safe_div (double,long long) ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,...) ;
 int search_queries ;
 int stats_buff ;
 int stemmer_version ;
 int tag_owner ;
 int tot_freed_deleted_items ;
 int tot_items ;
 int universal ;
 int update_queries ;
 int use_stemmer ;
 int word_split_utf8 ;
 int word_split_version ;
 int wordfreqs_enabled ;
 int worst_change_many_rates_time ;
 int worst_delete_items_with_hash_time ;
 int worst_hashlist_assign_max_time ;

int search_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  sb_printf (&sb, "malloc_memory_used\t%lld\n", get_malloc_memory_used ());
  SB_BINLOG;
  SB_INDEX;
  sb_printf (&sb,
    "index_items\t%d\n"
    "index_words\t%d\n"
    "index_hapax_legomena\t%d\n"
    "index_items_with_hash\t%d\n"
    "index_data_bytes\t%ld\n",
    idx_items, idx_words, idx_hapax_legomena,
    idx_items_with_hash, idx_bytes);

  int k;
  long long golomb_cb = Header.compression_bytes[0] + Header.compression_bytes[1];
  for (k = 0; k < 4; k++) {
    long long t1 = Header.compression_bytes[2*k+0],
              t2 = Header.compression_bytes[2*k+1],
              t = t1 + t2;
    if (t > 0) {
      if (golomb_cb > 0) {
        sb_printf (&sb, "%s\t%lld(%.6lf%%)=%lld(%.6lf%%)+%lld(%.6lf%%)\n",
                       list_get_compression_method_description (k),
                       t, safe_div (100.0 * t, golomb_cb),
                       t1, safe_div (100.0 * t1, Header.compression_bytes[0]),
                       t2, safe_div (100.0 * t2, Header.compression_bytes[1]));
      } else {
        sb_printf (&sb, "%s\t%lld=%lld+%lld\n",
                       list_get_compression_method_description (k),
                       t,
                       t1,
                       t2);
      }
    }
  }

  sb_printf (&sb,
      "index_compression_methods\t%s+%s\n"
      "left_subtree_size_threshold\t%d\n",
    list_get_compression_method_description (Header.word_list_compression_methods[0]),
    list_get_compression_method_description (Header.word_list_compression_methods[1]),
    Header.left_subtree_size_threshold);

  SB_PRINT_QUERIES(search_queries);
  SB_PRINT_QUERIES(extended_search_queries);
  SB_PRINT_QUERIES(relevance_search_queries);
  SB_PRINT_QUERIES(delete_queries);
  SB_PRINT_QUERIES(delete_hash_queries);
  SB_PRINT_QUERIES(update_queries);
  SB_PRINT_QUERIES(minor_update_queries);
  SB_PRINT_QUERIES(increment_queries);
  SB_PRINT_QUERIES(delete_items_with_hash_queries);
  SB_PRINT_QUERIES(hashlist_assign_max_queries);
  SB_PRINT_QUERIES(change_many_rates_queries);
  SB_PRINT_QUERIES(add_tags_queries);
  sb_printf (&sb,
      "items\t%d\n"
      "items_marked_as_deleted\t%d\n"
      "items_freed\t%d\n"
      "index_items_deleted\t%d\n"
      "tree_nodes_allocated\t%d\n"
      "tree_nodes_unused\t%d\n"
      "rebuild_hashmap_calls\t%lld\n"
      "last_search_query\t%s\n",
    tot_items,
    del_items,
    tot_freed_deleted_items,
    mod_items,
    alloc_tree_nodes,
    free_tree_nodes,
    rebuild_hashmap_calls,
    last_search_query);
  SB_PRINT_I64(delete_hash_query_items);
  SB_PRINT_I64(assign_max_set_rate_calls);
  SB_PRINT_I64(change_multiple_rates_set_rate_calls);
  SB_PRINT_TIME(worst_delete_items_with_hash_time);
  SB_PRINT_TIME(worst_hashlist_assign_max_time);
  SB_PRINT_TIME(worst_change_many_rates_time);

  SB_PRINT_I32(use_stemmer);
  SB_PRINT_I32(universal);
  SB_PRINT_I32(hashtags_enabled);
  SB_PRINT_I32(wordfreqs_enabled);
  SB_PRINT_I32(import_only_mode);
  SB_PRINT_I32(stemmer_version);
  SB_PRINT_I32(word_split_version);
  SB_PRINT_I32(word_split_utf8);
  SB_PRINT_I32(tag_owner);
  SB_PRINT_I32(listcomp_version);
  SB_PRINT_I32(creation_date);
  SB_PRINT_I32(delete_many_rates_mask);
  SB_PRINT_I32(return_empty_record_on_error);

  sb_printf (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}
