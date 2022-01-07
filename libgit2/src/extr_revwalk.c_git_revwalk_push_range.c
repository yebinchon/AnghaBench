
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int uninteresting; } ;
typedef TYPE_1__ git_revwalk__push_options ;
struct TYPE_10__ {int repo; } ;
typedef TYPE_2__ git_revwalk ;
struct TYPE_11__ {int flags; int to; int from; } ;
typedef TYPE_3__ git_revspec ;


 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_INVALID ;
 int GIT_REVPARSE_MERGE_BASE ;
 TYPE_1__ GIT_REVWALK__PUSH_OPTIONS_INIT ;
 int git_error_set (int ,char*) ;
 int git_object_free (int ) ;
 int git_object_id (int ) ;
 int git_revparse (TYPE_3__*,int ,char const*) ;
 int git_revwalk__push_commit (TYPE_2__*,int ,TYPE_1__*) ;

int git_revwalk_push_range(git_revwalk *walk, const char *range)
{
 git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
 git_revspec revspec;
 int error = 0;

 if ((error = git_revparse(&revspec, walk->repo, range)))
  return error;

 if (!revspec.to) {
  git_error_set(GIT_ERROR_INVALID, "invalid revspec: range not provided");
  error = GIT_EINVALIDSPEC;
  goto out;
 }

 if (revspec.flags & GIT_REVPARSE_MERGE_BASE) {

  git_error_set(GIT_ERROR_INVALID, "symmetric differences not implemented in revwalk");
  error = GIT_EINVALIDSPEC;
  goto out;
 }

 opts.uninteresting = 1;
 if ((error = git_revwalk__push_commit(walk, git_object_id(revspec.from), &opts)))
  goto out;

 opts.uninteresting = 0;
 error = git_revwalk__push_commit(walk, git_object_id(revspec.to), &opts);

out:
 git_object_free(revspec.from);
 git_object_free(revspec.to);
 return error;
}
