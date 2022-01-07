
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct log_state {int repo; } ;
struct TYPE_3__ {int flags; int * from; int * to; } ;
typedef TYPE_1__ git_revspec ;
typedef int git_oid ;


 int GIT_OBJECT_COMMIT ;
 int GIT_REVPARSE_MERGE_BASE ;
 int GIT_REVPARSE_SINGLE ;
 int check_lg2 (int ,char*,char const*) ;
 int git_merge_base (int *,int ,int ,int ) ;
 int git_object_id (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_revparse (TYPE_1__*,int ,char const*) ;
 scalar_t__ git_revparse_single (int **,int ,char const*) ;
 int push_rev (struct log_state*,int *,int) ;

__attribute__((used)) static int add_revision(struct log_state *s, const char *revstr)
{
 git_revspec revs;
 int hide = 0;

 if (!revstr) {
  push_rev(s, ((void*)0), hide);
  return 0;
 }

 if (*revstr == '^') {
  revs.flags = GIT_REVPARSE_SINGLE;
  hide = !hide;

  if (git_revparse_single(&revs.from, s->repo, revstr + 1) < 0)
   return -1;
 } else if (git_revparse(&revs, s->repo, revstr) < 0)
  return -1;

 if ((revs.flags & GIT_REVPARSE_SINGLE) != 0)
  push_rev(s, revs.from, hide);
 else {
  push_rev(s, revs.to, hide);

  if ((revs.flags & GIT_REVPARSE_MERGE_BASE) != 0) {
   git_oid base;
   check_lg2(git_merge_base(&base, s->repo,
    git_object_id(revs.from), git_object_id(revs.to)),
    "Could not find merge base", revstr);
   check_lg2(
    git_object_lookup(&revs.to, s->repo, &base, GIT_OBJECT_COMMIT),
    "Could not find merge base commit", ((void*)0));

   push_rev(s, revs.to, hide);
  }

  push_rev(s, revs.from, !hide);
 }

 return 0;
}
