
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_6__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;
struct TYPE_7__ {int left_subtree_size_threshold; } ;


 int AM_GET_MEMORY_USAGE_SELF ;
 int FullVersionStr ;
 TYPE_5__ Header ;
 int SB_BINLOG ;
 int SB_INDEX ;
 int SB_PRINT_I32 (int ) ;
 int SB_PRINT_I64 (int ) ;
 int SB_PRINT_QUERIES (int ) ;
 int STATS_BUFF_SIZE ;
 int alloc_tree_nodes ;
 int creation_date ;
 int decoder_positions_max_capacity ;
 int del_items ;
 int delete_item_queries ;
 int free_tree_nodes ;
 int get_malloc_memory_used () ;
 int hashtags_enabled ;
 int idx_bytes ;
 int idx_items ;
 int idx_words ;
 int increment_queries ;
 int listcomp_version ;
 int max_search_query_memory ;
 int mod_items ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,...) ;
 int search_queries ;
 int set_item_queries ;
 int set_rate_queries ;
 int stats_buff ;
 int stemmer_version ;
 int tag_owner ;
 int tot_freed_deleted_items ;
 int tot_items ;
 int tree_positions_bytes ;
 int universal ;
 int use_stemmer ;
 int word_split_utf8 ;
 int word_split_version ;
 int wordfreqs_enabled ;

int searchy_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  sb_printf (&sb, "malloc_memory_used\t%lld\n", get_malloc_memory_used ());
  SB_BINLOG;
  SB_INDEX;
  sb_printf (&sb,
    "index_items\t%d\n"
    "index_words\t%d\n"
    "index_data_bytes\t%lld\n",
    idx_items, idx_words, idx_bytes);

  sb_printf (&sb, "left_subtree_size_threshold\t%d\n", Header.left_subtree_size_threshold);
  SB_PRINT_QUERIES(search_queries);
  SB_PRINT_QUERIES(increment_queries);
  SB_PRINT_QUERIES(set_rate_queries);
  SB_PRINT_QUERIES(delete_item_queries);
  SB_PRINT_QUERIES(set_item_queries);

  sb_printf (&sb,
      "items\t%d\n"
      "items_marked_as_deleted\t%d\n"
      "items_freed\t%d\n"
      "index_items_deleted\t%d\n"
      "tree_nodes_allocated\t%d\n"
      "tree_nodes_unused\t%d\n",
    tot_items,
    del_items,
    tot_freed_deleted_items,
    mod_items,
    alloc_tree_nodes,
    free_tree_nodes);

  SB_PRINT_I64(tree_positions_bytes);
  SB_PRINT_I32(decoder_positions_max_capacity);
  SB_PRINT_I32(max_search_query_memory);
  SB_PRINT_I32(use_stemmer);
  SB_PRINT_I32(universal);
  SB_PRINT_I32(hashtags_enabled);
  SB_PRINT_I32(wordfreqs_enabled);
  SB_PRINT_I32(stemmer_version);
  SB_PRINT_I32(word_split_version);
  SB_PRINT_I32(word_split_utf8);
  SB_PRINT_I32(tag_owner);
  SB_PRINT_I32(listcomp_version);
  SB_PRINT_I32(creation_date);

  sb_printf (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}
