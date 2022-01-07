
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cb; } ;
struct TYPE_6__ {int * entry; TYPE_2__ base; } ;
typedef TYPE_3__ index_iterator ;
typedef int git_iterator ;
typedef int git_index_entry ;
struct TYPE_4__ {int (* advance ) (int const**,int *) ;} ;


 int GIT_ITEROVER ;
 int iterator__has_been_accessed (int *) ;
 int stub1 (int const**,int *) ;

__attribute__((used)) static int index_iterator_current(
 const git_index_entry **out, git_iterator *i)
{
 index_iterator *iter = (index_iterator *)i;

 if (!iterator__has_been_accessed(i))
  return iter->base.cb->advance(out, i);

 if (iter->entry == ((void*)0)) {
  *out = ((void*)0);
  return GIT_ITEROVER;
 }

 *out = iter->entry;
 return 0;
}
