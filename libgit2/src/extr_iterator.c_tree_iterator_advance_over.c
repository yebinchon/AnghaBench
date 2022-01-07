
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator_status_t ;
typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITERATOR_STATUS_NORMAL ;
 int git_iterator_advance (int const**,int *) ;

__attribute__((used)) static int tree_iterator_advance_over(
 const git_index_entry **out,
 git_iterator_status_t *status,
 git_iterator *i)
{
 *status = GIT_ITERATOR_STATUS_NORMAL;
 return git_iterator_advance(out, i);
}
