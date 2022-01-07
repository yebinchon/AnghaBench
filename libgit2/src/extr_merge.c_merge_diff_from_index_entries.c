
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_pool ;
struct TYPE_6__ {int pool; } ;
typedef TYPE_1__ git_merge_diff_list ;
struct TYPE_7__ {void* their_status; void* our_status; int their_entry; int our_entry; int ancestor_entry; } ;
typedef TYPE_2__ git_merge_diff ;
typedef int git_index_entry ;


 size_t TREE_IDX_ANCESTOR ;
 size_t TREE_IDX_OURS ;
 size_t TREE_IDX_THEIRS ;
 TYPE_2__* git_pool_mallocz (int *,int) ;
 scalar_t__ index_entry_dup_pool (int *,int *,int const*) ;
 void* merge_delta_type_from_index_entries (int const*,int const*) ;

__attribute__((used)) static git_merge_diff *merge_diff_from_index_entries(
 git_merge_diff_list *diff_list,
 const git_index_entry **entries)
{
 git_merge_diff *conflict;
 git_pool *pool = &diff_list->pool;

 if ((conflict = git_pool_mallocz(pool, sizeof(git_merge_diff))) == ((void*)0))
  return ((void*)0);

 if (index_entry_dup_pool(&conflict->ancestor_entry, pool, entries[TREE_IDX_ANCESTOR]) < 0 ||
  index_entry_dup_pool(&conflict->our_entry, pool, entries[TREE_IDX_OURS]) < 0 ||
  index_entry_dup_pool(&conflict->their_entry, pool, entries[TREE_IDX_THEIRS]) < 0)
  return ((void*)0);

 conflict->our_status = merge_delta_type_from_index_entries(
  entries[TREE_IDX_ANCESTOR], entries[TREE_IDX_OURS]);
 conflict->their_status = merge_delta_type_from_index_entries(
  entries[TREE_IDX_ANCESTOR], entries[TREE_IDX_THEIRS]);

 return conflict;
}
