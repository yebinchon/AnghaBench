
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int failures; int matches; int * pathspec; } ;
typedef TYPE_1__ git_pathspec_match_list ;


 int git__free (TYPE_1__*) ;
 int git_array_clear (int ) ;
 int git_pathspec_free (int *) ;
 int git_pool_clear (int *) ;

__attribute__((used)) static void pathspec_match_free(git_pathspec_match_list *m)
{
 if (!m)
  return;

 git_pathspec_free(m->pathspec);
 m->pathspec = ((void*)0);

 git_array_clear(m->matches);
 git_array_clear(m->failures);
 git_pool_clear(&m->pool);
 git__free(m);
}
