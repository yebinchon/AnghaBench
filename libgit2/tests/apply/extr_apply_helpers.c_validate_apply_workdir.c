
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {int dummy; } ;
struct iterator_compare_data {size_t member_1; int cnt; int idx; struct merge_index_entry* member_0; } ;
typedef int git_repository ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_INCLUDE_HASH ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_iterator_for_workdir (int **,int *,int *,int *,TYPE_1__*) ;
 int git_iterator_foreach (int *,int ,struct iterator_compare_data*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int *) ;
 int iterator_compare ;

void validate_apply_workdir(
 git_repository *repo,
 struct merge_index_entry *workdir_entries,
 size_t workdir_cnt)
{
 git_index *index;
 git_iterator *iterator;
 git_iterator_options opts = GIT_ITERATOR_OPTIONS_INIT;
 struct iterator_compare_data data = { workdir_entries, workdir_cnt };

 opts.flags |= GIT_ITERATOR_INCLUDE_HASH;

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_iterator_for_workdir(&iterator, repo, index, ((void*)0), &opts));

 cl_git_pass(git_iterator_foreach(iterator, iterator_compare, &data));
 cl_assert_equal_i(data.idx, data.cnt);

 git_iterator_free(iterator);
 git_index_free(index);
}
