
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_index_entry {int dummy; } ;
struct iterator_compare_data {size_t member_1; int cnt; int idx; struct merge_index_entry* member_0; } ;
typedef int git_repository ;
typedef int git_iterator ;
typedef int git_index ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_iterator_for_index (int **,int *,int *,int *) ;
 int git_iterator_foreach (int *,int ,struct iterator_compare_data*) ;
 int git_iterator_free (int *) ;
 int git_repository_index (int **,int *) ;
 int iterator_compare ;

void validate_apply_index(
 git_repository *repo,
 struct merge_index_entry *index_entries,
 size_t index_cnt)
{
 git_index *index;
 git_iterator *iterator;
 struct iterator_compare_data data = { index_entries, index_cnt };

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_iterator_for_index(&iterator, repo, index, ((void*)0)));

 cl_git_pass(git_iterator_foreach(iterator, iterator_compare, &data));
 cl_assert_equal_i(data.idx, data.cnt);

 git_iterator_free(iterator);
 git_index_free(index);
}
