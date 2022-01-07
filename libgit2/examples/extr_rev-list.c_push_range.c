
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_revwalk ;
struct TYPE_3__ {int flags; int to; int from; } ;
typedef TYPE_1__ git_revspec ;
typedef int git_repository ;


 int GIT_EINVALIDSPEC ;
 int GIT_REVPARSE_MERGE_BASE ;
 int git_object_free (int ) ;
 int git_object_id (int ) ;
 int git_revparse (TYPE_1__*,int *,char const*) ;
 int push_commit (int *,int ,int) ;

__attribute__((used)) static int push_range(git_repository *repo, git_revwalk *walk, const char *range, int hide)
{
 git_revspec revspec;
 int error = 0;

 if ((error = git_revparse(&revspec, repo, range)))
  return error;

 if (revspec.flags & GIT_REVPARSE_MERGE_BASE) {

  return GIT_EINVALIDSPEC;
 }

 if ((error = push_commit(walk, git_object_id(revspec.from), !hide)))
  goto out;

 error = push_commit(walk, git_object_id(revspec.to), hide);

out:
 git_object_free(revspec.from);
 git_object_free(revspec.to);
 return error;
}
