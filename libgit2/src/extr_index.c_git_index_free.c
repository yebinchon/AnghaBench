
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int index_free ;

void git_index_free(git_index *index)
{
 if (index == ((void*)0))
  return;

 GIT_REFCOUNT_DEC(index, index_free);
}
