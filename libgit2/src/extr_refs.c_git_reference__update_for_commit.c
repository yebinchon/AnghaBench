
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_repository ;
struct TYPE_7__ {int oid; } ;
struct TYPE_8__ {TYPE_1__ target; int name; } ;
typedef TYPE_2__ git_reference ;
typedef int git_oid ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int commit_type (int *) ;
 int ensure_is_an_updatable_direct_reference (TYPE_2__*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*,int ,int ) ;
 int * git_commit_committer (int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int const*) ;
 int git_commit_summary (int *) ;
 int git_reference__update_terminal (int *,char const*,int const*,int const*,int ) ;
 int git_reference_free (TYPE_2__*) ;
 int reference__create (TYPE_2__**,int *,int ,int const*,int *,int,int const*,int ,int *,int *) ;

int git_reference__update_for_commit(
 git_repository *repo,
 git_reference *ref,
 const char *ref_name,
 const git_oid *id,
 const char *operation)
{
 git_reference *ref_new = ((void*)0);
 git_commit *commit = ((void*)0);
 git_buf reflog_msg = GIT_BUF_INIT;
 const git_signature *who;
 int error;

 if ((error = git_commit_lookup(&commit, repo, id)) < 0 ||
  (error = git_buf_printf(&reflog_msg, "%s%s: %s",
   operation ? operation : "commit",
   commit_type(commit),
   git_commit_summary(commit))) < 0)
  goto done;

 who = git_commit_committer(commit);

 if (ref) {
  if ((error = ensure_is_an_updatable_direct_reference(ref)) < 0)
   return error;

  error = reference__create(&ref_new, repo, ref->name, id, ((void*)0), 1, who,
       git_buf_cstr(&reflog_msg), &ref->target.oid, ((void*)0));
 }
 else
  error = git_reference__update_terminal(
   repo, ref_name, id, who, git_buf_cstr(&reflog_msg));

done:
 git_reference_free(ref_new);
 git_buf_dispose(&reflog_msg);
 git_commit_free(commit);
 return error;
}
