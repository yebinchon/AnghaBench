
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITEROVER ;
 int GIT_UNUSED (int *) ;

__attribute__((used)) static int empty_iterator_noop(const git_index_entry **e, git_iterator *i)
{
 GIT_UNUSED(i);

 if (e)
  *e = ((void*)0);

 return GIT_ITEROVER;
}
