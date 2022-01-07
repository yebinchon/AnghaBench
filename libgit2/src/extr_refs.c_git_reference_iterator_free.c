
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference_iterator ;


 int git_refdb_iterator_free (int *) ;

void git_reference_iterator_free(git_reference_iterator *iter)
{
 if (iter == ((void*)0))
  return;

 git_refdb_iterator_free(iter);
}
