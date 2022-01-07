
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_blame_hunk ;
struct TYPE_5__ {int hunks; } ;
typedef TYPE_1__ git_blame ;


 int assert (TYPE_1__*) ;
 int const* git_blame_get_hunk_byindex (TYPE_1__*,int ) ;
 int git_vector_bsearch2 (size_t*,int *,int ,size_t*) ;
 int hunk_byfinalline_search_cmp ;

const git_blame_hunk *git_blame_get_hunk_byline(git_blame *blame, size_t lineno)
{
 size_t i, new_lineno = lineno;
 assert(blame);

 if (!git_vector_bsearch2(&i, &blame->hunks, hunk_byfinalline_search_cmp, &new_lineno)) {
  return git_blame_get_hunk_byindex(blame, (uint32_t)i);
 }

 return ((void*)0);
}
