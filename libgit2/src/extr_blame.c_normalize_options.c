
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {int min_line; int flags; int newest_commit; } ;
typedef TYPE_1__ git_blame_options ;


 TYPE_1__ GIT_BLAME_OPTIONS_INIT ;
 int GIT_BLAME_TRACK_COPIES_ANY_COMMIT_COPIES ;
 int GIT_BLAME_TRACK_COPIES_SAME_COMMIT_COPIES ;
 int GIT_BLAME_TRACK_COPIES_SAME_COMMIT_MOVES ;
 int GIT_BLAME_TRACK_COPIES_SAME_FILE ;
 scalar_t__ git_oid_is_zero (int *) ;
 scalar_t__ git_reference_name_to_id (int *,int *,char*) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

__attribute__((used)) static int normalize_options(
  git_blame_options *out,
  const git_blame_options *in,
  git_repository *repo)
{
 git_blame_options dummy = GIT_BLAME_OPTIONS_INIT;
 if (!in) in = &dummy;

 memcpy(out, in, sizeof(git_blame_options));


 if (git_oid_is_zero(&out->newest_commit)) {
  if (git_reference_name_to_id(&out->newest_commit, repo, "HEAD") < 0) {
   return -1;
  }
 }


 if (!out->min_line) out->min_line = 1;



 if (out->flags & GIT_BLAME_TRACK_COPIES_ANY_COMMIT_COPIES)
  out->flags |= GIT_BLAME_TRACK_COPIES_SAME_COMMIT_COPIES;
 if (out->flags & GIT_BLAME_TRACK_COPIES_SAME_COMMIT_COPIES)
  out->flags |= GIT_BLAME_TRACK_COPIES_SAME_COMMIT_MOVES;
 if (out->flags & GIT_BLAME_TRACK_COPIES_SAME_COMMIT_MOVES)
  out->flags |= GIT_BLAME_TRACK_COPIES_SAME_FILE;

 return 0;
}
