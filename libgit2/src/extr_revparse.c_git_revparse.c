
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int from; int flags; int to; } ;
typedef TYPE_1__ git_revspec ;
typedef int git_repository ;


 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_INVALID ;
 int GIT_REVPARSE_MERGE_BASE ;
 int GIT_REVPARSE_RANGE ;
 int GIT_REVPARSE_SINGLE ;
 int assert (int ) ;
 int git__free (void*) ;
 int git__strcmp (char const*,char*) ;
 char* git__substrdup (char const*,int) ;
 int git_error_set (int ,char*) ;
 int git_revparse_single (int *,int *,char const*) ;
 int memset (TYPE_1__*,int,int) ;
 char* strstr (char const*,char*) ;

int git_revparse(
 git_revspec *revspec,
 git_repository *repo,
 const char *spec)
{
 const char *dotdot;
 int error = 0;

 assert(revspec && repo && spec);

 memset(revspec, 0x0, sizeof(*revspec));

 if ((dotdot = strstr(spec, "..")) != ((void*)0)) {
  char *lstr;
  const char *rstr;
  revspec->flags = GIT_REVPARSE_RANGE;







  if (!git__strcmp(spec, "..")) {
   git_error_set(GIT_ERROR_INVALID, "Invalid pattern '..'");
   return GIT_EINVALIDSPEC;
  }

  lstr = git__substrdup(spec, dotdot - spec);
  rstr = dotdot + 2;
  if (dotdot[2] == '.') {
   revspec->flags |= GIT_REVPARSE_MERGE_BASE;
   rstr++;
  }

  error = git_revparse_single(
   &revspec->from,
   repo,
   *lstr == '\0' ? "HEAD" : lstr);

  if (!error) {
   error = git_revparse_single(
    &revspec->to,
    repo,
    *rstr == '\0' ? "HEAD" : rstr);
  }

  git__free((void*)lstr);
 } else {
  revspec->flags = GIT_REVPARSE_SINGLE;
  error = git_revparse_single(&revspec->from, repo, spec);
 }

 return error;
}
