
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_diff_df_data {int dummy; } ;
struct TYPE_4__ {int conflicts; } ;
typedef TYPE_1__ git_merge_diff_list ;
typedef int git_merge_diff ;
typedef int git_index_entry ;


 scalar_t__ git_vector_insert (int *,int *) ;
 scalar_t__ merge_diff_detect_df_conflict (struct merge_diff_df_data*,int *) ;
 scalar_t__ merge_diff_detect_type (int *) ;
 int * merge_diff_from_index_entries (TYPE_1__*,int const**) ;

__attribute__((used)) static int merge_diff_list_insert_conflict(
 git_merge_diff_list *diff_list,
 struct merge_diff_df_data *merge_df_data,
 const git_index_entry *tree_items[3])
{
 git_merge_diff *conflict;

 if ((conflict = merge_diff_from_index_entries(diff_list, tree_items)) == ((void*)0) ||
  merge_diff_detect_type(conflict) < 0 ||
  merge_diff_detect_df_conflict(merge_df_data, conflict) < 0 ||
  git_vector_insert(&diff_list->conflicts, conflict) < 0)
  return -1;

 return 0;
}
