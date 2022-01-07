
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITEROVER ;
 int git_iterator_advance_into (int const**,int *) ;

__attribute__((used)) static int iterator_advance_into(
 const git_index_entry **entry,
 git_iterator *iterator)
{
 int error;

 if ((error = git_iterator_advance_into(entry, iterator)) == GIT_ITEROVER) {
  *entry = ((void*)0);
  error = 0;
 }

 return error;
}
