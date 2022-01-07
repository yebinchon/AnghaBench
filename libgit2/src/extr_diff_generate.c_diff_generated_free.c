
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; int deltas; int attrsession; } ;
struct TYPE_6__ {TYPE_1__ base; int pathspec; } ;
typedef TYPE_2__ git_diff_generated ;
typedef int git_diff ;


 int git__free (TYPE_2__*) ;
 int git__memzero (TYPE_2__*,int) ;
 int git_attr_session__free (int *) ;
 int git_pathspec__vfree (int *) ;
 int git_pool_clear (int *) ;
 int git_vector_free_deep (int *) ;

__attribute__((used)) static void diff_generated_free(git_diff *d)
{
 git_diff_generated *diff = (git_diff_generated *)d;

 git_attr_session__free(&diff->base.attrsession);
 git_vector_free_deep(&diff->base.deltas);

 git_pathspec__vfree(&diff->pathspec);
 git_pool_clear(&diff->base.pool);

 git__memzero(diff, sizeof(*diff));
 git__free(diff);
}
