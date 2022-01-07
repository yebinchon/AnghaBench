
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t count; int * strings; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_6__ {int pathlist; } ;
typedef TYPE_2__ git_iterator ;


 scalar_t__ git_vector_init (int *,size_t,int *) ;
 scalar_t__ git_vector_insert (int *,int ) ;

__attribute__((used)) static int iterator_pathlist_init(git_iterator *iter, git_strarray *pathlist)
{
 size_t i;

 if (git_vector_init(&iter->pathlist, pathlist->count, ((void*)0)) < 0)
  return -1;

 for (i = 0; i < pathlist->count; i++) {
  if (!pathlist->strings[i])
   continue;

  if (git_vector_insert(&iter->pathlist, pathlist->strings[i]) < 0)
   return -1;
 }

 return 0;
}
