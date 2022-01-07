
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int const git_blame_hunk ;
struct TYPE_4__ {int hunks; } ;
typedef TYPE_1__ git_blame ;


 int assert (TYPE_1__*) ;
 scalar_t__ git_vector_get (int *,int ) ;

const git_blame_hunk *git_blame_get_hunk_byindex(git_blame *blame, uint32_t index)
{
 assert(blame);
 return (git_blame_hunk*)git_vector_get(&blame->hunks, index);
}
