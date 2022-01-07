
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator_status_t ;
typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITEROVER ;
 int git_iterator_advance_over (int const**,int *,int *) ;

__attribute__((used)) static int iterator_advance_over(
 const git_index_entry **entry,
 git_iterator_status_t *status,
 git_iterator *iterator)
{
 int error = git_iterator_advance_over(entry, status, iterator);

 if (error == GIT_ITEROVER) {
  *entry = ((void*)0);
  error = 0;
 }

 return error;
}
