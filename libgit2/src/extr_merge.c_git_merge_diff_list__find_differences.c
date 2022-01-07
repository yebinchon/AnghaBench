
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_diff_find_data {int * member_0; } ;
typedef int git_merge_diff_list ;
typedef int git_iterator ;


 int git_iterator_walk (int **,int,int ,struct merge_diff_find_data*) ;
 int queue_difference ;

int git_merge_diff_list__find_differences(
 git_merge_diff_list *diff_list,
 git_iterator *ancestor_iter,
 git_iterator *our_iter,
 git_iterator *their_iter)
{
 git_iterator *iterators[3] = { ancestor_iter, our_iter, their_iter };
 struct merge_diff_find_data find_data = { diff_list };

 return git_iterator_walk(iterators, 3, queue_difference, &find_data);
}
