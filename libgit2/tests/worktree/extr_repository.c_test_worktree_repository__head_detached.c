
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int oid; } ;
struct TYPE_8__ {TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;
struct TYPE_9__ {int repo; int worktree; } ;


 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_6__ fixture ;
 int git_reference_free (TYPE_2__*) ;
 int git_reference_lookup (TYPE_2__**,int ,char*) ;
 int git_repository_head_detached (int ) ;
 int git_repository_head_detached_for_worktree (int ,char*) ;
 int git_repository_head_for_worktree (TYPE_2__**,int ,char*) ;
 int git_repository_set_head_detached (int ,int *) ;

void test_worktree_repository__head_detached(void)
{
 git_reference *ref, *head;

 cl_git_pass(git_reference_lookup(&ref, fixture.repo, "refs/heads/testrepo-worktree"));
 cl_git_pass(git_repository_set_head_detached(fixture.worktree, &ref->target.oid));

 cl_assert(git_repository_head_detached(fixture.worktree));
 cl_assert(git_repository_head_detached_for_worktree(fixture.repo, "testrepo-worktree"));
 cl_git_fail(git_repository_head_for_worktree(&head, fixture.repo, "testrepo-worktree"));

 git_reference_free(ref);
}
