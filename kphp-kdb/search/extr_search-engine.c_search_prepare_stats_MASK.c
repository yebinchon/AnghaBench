#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_6__ {int pos; } ;
typedef  TYPE_1__ stats_buffer_t ;
struct TYPE_7__ {long long* compression_bytes; int* word_list_compression_methods; int /*<<< orphan*/  left_subtree_size_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  AM_GET_MEMORY_USAGE_SELF ; 
 int /*<<< orphan*/  FullVersionStr ; 
 TYPE_5__ Header ; 
 int /*<<< orphan*/  SB_BINLOG ; 
 int /*<<< orphan*/  SB_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  add_tags_queries ; 
 int /*<<< orphan*/  alloc_tree_nodes ; 
 int /*<<< orphan*/  assign_max_set_rate_calls ; 
 int /*<<< orphan*/  change_many_rates_queries ; 
 int /*<<< orphan*/  change_multiple_rates_set_rate_calls ; 
 int /*<<< orphan*/  creation_date ; 
 int /*<<< orphan*/  del_items ; 
 int /*<<< orphan*/  delete_hash_queries ; 
 int /*<<< orphan*/  delete_hash_query_items ; 
 int /*<<< orphan*/  delete_items_with_hash_queries ; 
 int /*<<< orphan*/  delete_many_rates_mask ; 
 int /*<<< orphan*/  delete_queries ; 
 int /*<<< orphan*/  extended_search_queries ; 
 int /*<<< orphan*/  free_tree_nodes ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  hashlist_assign_max_queries ; 
 int /*<<< orphan*/  hashtags_enabled ; 
 int /*<<< orphan*/  idx_bytes ; 
 int /*<<< orphan*/  idx_hapax_legomena ; 
 int /*<<< orphan*/  idx_items ; 
 int /*<<< orphan*/  idx_items_with_hash ; 
 int /*<<< orphan*/  idx_words ; 
 int /*<<< orphan*/  import_only_mode ; 
 int /*<<< orphan*/  increment_queries ; 
 int /*<<< orphan*/  last_search_query ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  listcomp_version ; 
 int /*<<< orphan*/  minor_update_queries ; 
 int /*<<< orphan*/  mod_items ; 
 int /*<<< orphan*/  rebuild_hashmap_calls ; 
 int /*<<< orphan*/  relevance_search_queries ; 
 int /*<<< orphan*/  return_empty_record_on_error ; 
 int /*<<< orphan*/  FUNC6 (double,long long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  search_queries ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stemmer_version ; 
 int /*<<< orphan*/  tag_owner ; 
 int /*<<< orphan*/  tot_freed_deleted_items ; 
 int /*<<< orphan*/  tot_items ; 
 int /*<<< orphan*/  universal ; 
 int /*<<< orphan*/  update_queries ; 
 int /*<<< orphan*/  use_stemmer ; 
 int /*<<< orphan*/  word_split_utf8 ; 
 int /*<<< orphan*/  word_split_version ; 
 int /*<<< orphan*/  wordfreqs_enabled ; 
 int /*<<< orphan*/  worst_change_many_rates_time ; 
 int /*<<< orphan*/  worst_delete_items_with_hash_time ; 
 int /*<<< orphan*/  worst_hashlist_assign_max_time ; 

int FUNC10 (struct connection *c) {
  stats_buffer_t sb;
  FUNC8 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC7 (&sb, AM_GET_MEMORY_USAGE_SELF);
  FUNC9 (&sb, "malloc_memory_used\t%lld\n", FUNC4 ());
  SB_BINLOG;
  SB_INDEX;
  FUNC9 (&sb,
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
        FUNC9 (&sb, "%s\t%lld(%.6lf%%)=%lld(%.6lf%%)+%lld(%.6lf%%)\n",
                       FUNC5 (k),
                       t, FUNC6 (100.0 * t, golomb_cb),
                       t1, FUNC6 (100.0 * t1, Header.compression_bytes[0]),
                       t2, FUNC6 (100.0 * t2, Header.compression_bytes[1]));
      } else {
        FUNC9 (&sb, "%s\t%lld=%lld+%lld\n",
                       FUNC5 (k),
                       t,
                       t1,
                       t2);
      }
    }
  }

  FUNC9 (&sb,
      "index_compression_methods\t%s+%s\n"
      "left_subtree_size_threshold\t%d\n",
    FUNC5 (Header.word_list_compression_methods[0]),
    FUNC5 (Header.word_list_compression_methods[1]),
    Header.left_subtree_size_threshold);

  FUNC2(search_queries);
  FUNC2(extended_search_queries);
  FUNC2(relevance_search_queries);
  FUNC2(delete_queries);
  FUNC2(delete_hash_queries);
  FUNC2(update_queries);
  FUNC2(minor_update_queries);
  FUNC2(increment_queries);
  FUNC2(delete_items_with_hash_queries);
  FUNC2(hashlist_assign_max_queries);
  FUNC2(change_many_rates_queries);
  FUNC2(add_tags_queries);
  FUNC9 (&sb,
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
  FUNC1(delete_hash_query_items);
  FUNC1(assign_max_set_rate_calls);
  FUNC1(change_multiple_rates_set_rate_calls);
  FUNC3(worst_delete_items_with_hash_time);
  FUNC3(worst_hashlist_assign_max_time);
  FUNC3(worst_change_many_rates_time);

  FUNC0(use_stemmer);
  FUNC0(universal);
  FUNC0(hashtags_enabled);
  FUNC0(wordfreqs_enabled);
  FUNC0(import_only_mode);
  FUNC0(stemmer_version);
  FUNC0(word_split_version);
  FUNC0(word_split_utf8);
  FUNC0(tag_owner);
  FUNC0(listcomp_version);
  FUNC0(creation_date);
  FUNC0(delete_many_rates_mask);
  FUNC0(return_empty_record_on_error);

  FUNC9 (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}