
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {int start; int end; } ;
typedef TYPE_1__ git_regmatch ;
typedef int git_regexp ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 int GIT_ENOTFOUND ;
 int GIT_HEAD_FILE ;
 scalar_t__ build_regex (int *,char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_put (int *,char const*,int) ;
 int git_reference_dwim (int **,int *,int ) ;
 int git_reference_free (int *) ;
 scalar_t__ git_reference_lookup (int **,int *,int ) ;
 int * git_reflog_entry_byindex (int *,size_t) ;
 char* git_reflog_entry_message (int const*) ;
 size_t git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 scalar_t__ git_reflog_read (int **,int *,int ) ;
 int git_regexp_dispose (int *) ;
 scalar_t__ git_regexp_search (int *,char const*,int,TYPE_1__*) ;
 int maybe_abbrev (int **,int *,int ) ;

__attribute__((used)) static int retrieve_previously_checked_out_branch_or_revision(git_object **out, git_reference **base_ref, git_repository *repo, const char *identifier, size_t position)
{
 git_reference *ref = ((void*)0);
 git_reflog *reflog = ((void*)0);
 git_regexp preg;
 int error = -1;
 size_t i, numentries, cur;
 const git_reflog_entry *entry;
 const char *msg;
 git_buf buf = GIT_BUF_INIT;

 cur = position;

 if (*identifier != '\0' || *base_ref != ((void*)0))
  return GIT_EINVALIDSPEC;

 if (build_regex(&preg, "checkout: moving from (.*) to .*") < 0)
  return -1;

 if (git_reference_lookup(&ref, repo, GIT_HEAD_FILE) < 0)
  goto cleanup;

 if (git_reflog_read(&reflog, repo, GIT_HEAD_FILE) < 0)
  goto cleanup;

 numentries = git_reflog_entrycount(reflog);

 for (i = 0; i < numentries; i++) {
  git_regmatch regexmatches[2];

  entry = git_reflog_entry_byindex(reflog, i);
  msg = git_reflog_entry_message(entry);
  if (!msg)
   continue;

  if (git_regexp_search(&preg, msg, 2, regexmatches) < 0)
   continue;

  cur--;

  if (cur > 0)
   continue;

  if ((git_buf_put(&buf, msg+regexmatches[1].start, regexmatches[1].end - regexmatches[1].start)) < 0)
   goto cleanup;

  if ((error = git_reference_dwim(base_ref, repo, git_buf_cstr(&buf))) == 0)
   goto cleanup;

  if (error < 0 && error != GIT_ENOTFOUND)
   goto cleanup;

  error = maybe_abbrev(out, repo, git_buf_cstr(&buf));

  goto cleanup;
 }

 error = GIT_ENOTFOUND;

cleanup:
 git_reference_free(ref);
 git_buf_dispose(&buf);
 git_regexp_dispose(&preg);
 git_reflog_free(reflog);
 return error;
}
