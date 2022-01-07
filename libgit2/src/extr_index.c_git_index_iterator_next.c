
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cur; int snap; } ;
typedef TYPE_1__ git_index_iterator ;
typedef int git_index_entry ;


 int GIT_ITEROVER ;
 int assert (int) ;
 scalar_t__ git_vector_get (int *,int ) ;
 scalar_t__ git_vector_length (int *) ;

int git_index_iterator_next(
 const git_index_entry **out,
 git_index_iterator *it)
{
 assert(out && it);

 if (it->cur >= git_vector_length(&it->snap))
  return GIT_ITEROVER;

 *out = (git_index_entry *)git_vector_get(&it->snap, it->cur++);
 return 0;
}
