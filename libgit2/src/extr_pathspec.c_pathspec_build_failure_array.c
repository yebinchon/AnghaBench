
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t length; } ;
typedef TYPE_1__ git_vector ;
typedef int git_pool ;
typedef int git_pathspec_string_array_t ;
typedef int git_bitvec ;
struct TYPE_7__ {int pattern; } ;
typedef TYPE_2__ git_attr_fnmatch ;


 char** git_array_alloc (int ) ;
 scalar_t__ git_bitvec_get (int *,size_t) ;
 char* git_pool_strdup (int *,int ) ;
 TYPE_2__* git_vector_get (TYPE_1__*,size_t) ;

__attribute__((used)) static int pathspec_build_failure_array(
 git_pathspec_string_array_t *failures,
 git_vector *patterns,
 git_bitvec *used,
 git_pool *pool)
{
 size_t pos;
 char **failed;
 const git_attr_fnmatch *pat;

 for (pos = 0; pos < patterns->length; ++pos) {
  if (git_bitvec_get(used, pos))
   continue;

  if ((failed = git_array_alloc(*failures)) == ((void*)0))
   return -1;

  pat = git_vector_get(patterns, pos);

  if ((*failed = git_pool_strdup(pool, pat->pattern)) == ((void*)0))
   return -1;
 }

 return 0;
}
