
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator_status_t ;
typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITERATOR_STATUS_EMPTY ;
 int empty_iterator_noop (int const**,int *) ;

__attribute__((used)) static int empty_iterator_advance_over(
 const git_index_entry **e,
 git_iterator_status_t *s,
 git_iterator *i)
{
 *s = GIT_ITERATOR_STATUS_EMPTY;
 return empty_iterator_noop(e, i);
}
