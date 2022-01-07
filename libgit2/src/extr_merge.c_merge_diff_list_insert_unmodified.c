
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int staged; int pool; } ;
typedef TYPE_1__ git_merge_diff_list ;
typedef int git_index_entry ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int * git_pool_malloc (int *,int) ;
 int git_vector_insert (int *,int *) ;
 int index_entry_dup_pool (int *,int *,int const*) ;

__attribute__((used)) static int merge_diff_list_insert_unmodified(
 git_merge_diff_list *diff_list,
 const git_index_entry *tree_items[3])
{
 int error = 0;
 git_index_entry *entry;

 entry = git_pool_malloc(&diff_list->pool, sizeof(git_index_entry));
 GIT_ERROR_CHECK_ALLOC(entry);

 if ((error = index_entry_dup_pool(entry, &diff_list->pool, tree_items[0])) >= 0)
  error = git_vector_insert(&diff_list->staged, entry);

 return error;
}
