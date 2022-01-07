
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iterator_time; int commit_pool; int commits; int odb; } ;
typedef TYPE_1__ git_revwalk ;


 int git__free (TYPE_1__*) ;
 int git_odb_free (int ) ;
 int git_oidmap_free (int ) ;
 int git_pool_clear (int *) ;
 int git_pqueue_free (int *) ;
 int git_revwalk_reset (TYPE_1__*) ;

void git_revwalk_free(git_revwalk *walk)
{
 if (walk == ((void*)0))
  return;

 git_revwalk_reset(walk);
 git_odb_free(walk->odb);

 git_oidmap_free(walk->commits);
 git_pool_clear(&walk->commit_pool);
 git_pqueue_free(&walk->iterator_time);
 git__free(walk);
}
