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
struct TYPE_7__ {int /*<<< orphan*/  left_subtree_size_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  AM_GET_MEMORY_USAGE_SELF ; 
 int /*<<< orphan*/  FullVersionStr ; 
 TYPE_5__ Header ; 
 int /*<<< orphan*/  SB_BINLOG ; 
 int /*<<< orphan*/  SB_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  alloc_tree_nodes ; 
 int /*<<< orphan*/  creation_date ; 
 int /*<<< orphan*/  decoder_positions_max_capacity ; 
 int /*<<< orphan*/  del_items ; 
 int /*<<< orphan*/  delete_item_queries ; 
 int /*<<< orphan*/  free_tree_nodes ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  hashtags_enabled ; 
 int /*<<< orphan*/  idx_bytes ; 
 int /*<<< orphan*/  idx_items ; 
 int /*<<< orphan*/  idx_words ; 
 int /*<<< orphan*/  increment_queries ; 
 int /*<<< orphan*/  listcomp_version ; 
 int /*<<< orphan*/  max_search_query_memory ; 
 int /*<<< orphan*/  mod_items ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  search_queries ; 
 int /*<<< orphan*/  set_item_queries ; 
 int /*<<< orphan*/  set_rate_queries ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stemmer_version ; 
 int /*<<< orphan*/  tag_owner ; 
 int /*<<< orphan*/  tot_freed_deleted_items ; 
 int /*<<< orphan*/  tot_items ; 
 int /*<<< orphan*/  tree_positions_bytes ; 
 int /*<<< orphan*/  universal ; 
 int /*<<< orphan*/  use_stemmer ; 
 int /*<<< orphan*/  word_split_utf8 ; 
 int /*<<< orphan*/  word_split_version ; 
 int /*<<< orphan*/  wordfreqs_enabled ; 

int FUNC7 (struct connection *c) {
  stats_buffer_t sb;
  FUNC5 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC4 (&sb, AM_GET_MEMORY_USAGE_SELF);
  FUNC6 (&sb, "malloc_memory_used\t%lld\n", FUNC3 ());
  SB_BINLOG;
  SB_INDEX;
  FUNC6 (&sb,
    "index_items\t%d\n"
    "index_words\t%d\n"
    "index_data_bytes\t%lld\n",
    idx_items, idx_words, idx_bytes);

  FUNC6 (&sb, "left_subtree_size_threshold\t%d\n", Header.left_subtree_size_threshold);
  FUNC2(search_queries);
  FUNC2(increment_queries);
  FUNC2(set_rate_queries);
  FUNC2(delete_item_queries);
  FUNC2(set_item_queries);

  FUNC6 (&sb,
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

  FUNC1(tree_positions_bytes);
  FUNC0(decoder_positions_max_capacity);
  FUNC0(max_search_query_memory);
  FUNC0(use_stemmer);
  FUNC0(universal);
  FUNC0(hashtags_enabled);
  FUNC0(wordfreqs_enabled);
  FUNC0(stemmer_version);
  FUNC0(word_split_version);
  FUNC0(word_split_utf8);
  FUNC0(tag_owner);
  FUNC0(listcomp_version);
  FUNC0(creation_date);

  FUNC6 (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}