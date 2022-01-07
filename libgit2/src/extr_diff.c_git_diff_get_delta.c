
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_diff_delta ;
struct TYPE_4__ {int deltas; } ;
typedef TYPE_1__ git_diff ;


 int assert (TYPE_1__ const*) ;
 int const* git_vector_get (int *,size_t) ;

const git_diff_delta *git_diff_get_delta(const git_diff *diff, size_t idx)
{
 assert(diff);
 return git_vector_get(&diff->deltas, idx);
}
