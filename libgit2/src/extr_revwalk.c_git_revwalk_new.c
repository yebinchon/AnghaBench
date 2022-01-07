
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int odb; int * repo; int * enqueue; int * get_next; int commit_pool; int iterator_time; int commits; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_repository ;


 int COMMIT_ALLOC ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git_commit_list_time_cmp ;
 scalar_t__ git_oidmap_new (int *) ;
 int git_pool_init (int *,int ) ;
 scalar_t__ git_pqueue_init (int *,int ,int,int ) ;
 scalar_t__ git_repository_odb (int *,int *) ;
 int git_revwalk_free (TYPE_1__*) ;
 int revwalk_enqueue_unsorted ;
 int revwalk_next_unsorted ;

int git_revwalk_new(git_revwalk **revwalk_out, git_repository *repo)
{
 git_revwalk *walk = git__calloc(1, sizeof(git_revwalk));
 GIT_ERROR_CHECK_ALLOC(walk);

 if (git_oidmap_new(&walk->commits) < 0)
  return -1;

 if (git_pqueue_init(&walk->iterator_time, 0, 8, git_commit_list_time_cmp) < 0)
  return -1;

 git_pool_init(&walk->commit_pool, COMMIT_ALLOC);
 walk->get_next = &revwalk_next_unsorted;
 walk->enqueue = &revwalk_enqueue_unsorted;

 walk->repo = repo;

 if (git_repository_odb(&walk->odb, repo) < 0) {
  git_revwalk_free(walk);
  return -1;
 }

 *revwalk_out = walk;
 return 0;
}
