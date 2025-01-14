
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_time_t ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 int assert (int ) ;
 scalar_t__ git__date_parse (scalar_t__*,char const*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_put (int *,char const*,size_t) ;
 int retrieve_previously_checked_out_branch_or_revision (int **,int **,int *,int ,int) ;
 int retrieve_remote_tracking_reference (int **,int ,int *) ;
 int retrieve_revobject_from_reflog (int **,int **,int *,int ,size_t) ;
 int strcmp (char const*,char*) ;
 int try_parse_numeric (int*,char const*) ;

__attribute__((used)) static int handle_at_syntax(git_object **out, git_reference **ref, const char *spec, size_t identifier_len, git_repository* repo, const char *curly_braces_content)
{
 bool is_numeric;
 int parsed = 0, error = -1;
 git_buf identifier = GIT_BUF_INIT;
 git_time_t timestamp;

 assert(*out == ((void*)0));

 if (git_buf_put(&identifier, spec, identifier_len) < 0)
  return -1;

 is_numeric = !try_parse_numeric(&parsed, curly_braces_content);

 if (*curly_braces_content == '-' && (!is_numeric || parsed == 0)) {
  error = GIT_EINVALIDSPEC;
  goto cleanup;
 }

 if (is_numeric) {
  if (parsed < 0)
   error = retrieve_previously_checked_out_branch_or_revision(out, ref, repo, git_buf_cstr(&identifier), -parsed);
  else
   error = retrieve_revobject_from_reflog(out, ref, repo, git_buf_cstr(&identifier), parsed);

  goto cleanup;
 }

 if (!strcmp(curly_braces_content, "u") || !strcmp(curly_braces_content, "upstream")) {
  error = retrieve_remote_tracking_reference(ref, git_buf_cstr(&identifier), repo);

  goto cleanup;
 }

 if (git__date_parse(&timestamp, curly_braces_content) < 0)
  goto cleanup;

 error = retrieve_revobject_from_reflog(out, ref, repo, git_buf_cstr(&identifier), (size_t)timestamp);

cleanup:
 git_buf_dispose(&identifier);
 return error;
}
