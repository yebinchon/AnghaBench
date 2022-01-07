
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_reference ;
struct TYPE_8__ {int id; } ;
typedef TYPE_1__ git_rebase_operation ;
struct TYPE_9__ {int repo; int current; int operations; } ;
typedef TYPE_2__ git_rebase ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;


 int GIT_EUNMERGED ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OID_HEXSZ ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int REWRITTEN_FILE ;
 int assert (TYPE_1__*) ;
 TYPE_1__* git_array_get (int ,int ) ;
 int git_commit_free (int *) ;
 int * git_commit_id (int *) ;
 int git_index_free (int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_oid_fmt (char*,int *) ;
 int git_reference__update_for_commit (int ,int *,char*,int *,char*) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_index (int **,int ) ;
 int rebase_commit__create (int **,TYPE_2__*,int *,int *,int const*,int const*,char const*,char const*) ;
 int rebase_ensure_not_dirty (int ,int,int,int ) ;
 int rebase_setupfile (TYPE_2__*,int ,int,char*,int,char*,int,char*) ;

__attribute__((used)) static int rebase_commit_merge(
 git_oid *commit_id,
 git_rebase *rebase,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message)
{
 git_rebase_operation *operation;
 git_reference *head = ((void*)0);
 git_commit *head_commit = ((void*)0), *commit = ((void*)0);
 git_index *index = ((void*)0);
 char old_idstr[GIT_OID_HEXSZ], new_idstr[GIT_OID_HEXSZ];
 int error;

 operation = git_array_get(rebase->operations, rebase->current);
 assert(operation);

 if ((error = rebase_ensure_not_dirty(rebase->repo, 0, 1, GIT_EUNMERGED)) < 0 ||
  (error = git_repository_head(&head, rebase->repo)) < 0 ||
  (error = git_reference_peel((git_object **)&head_commit, head, GIT_OBJECT_COMMIT)) < 0 ||
  (error = git_repository_index(&index, rebase->repo)) < 0 ||
  (error = rebase_commit__create(&commit, rebase, index, head_commit,
   author, committer, message_encoding, message)) < 0 ||
  (error = git_reference__update_for_commit(
   rebase->repo, ((void*)0), "HEAD", git_commit_id(commit), "rebase")) < 0)
  goto done;

 git_oid_fmt(old_idstr, &operation->id);
 git_oid_fmt(new_idstr, git_commit_id(commit));

 if ((error = rebase_setupfile(rebase, REWRITTEN_FILE, O_CREAT|O_WRONLY|O_APPEND,
  "%.*s %.*s\n", GIT_OID_HEXSZ, old_idstr, GIT_OID_HEXSZ, new_idstr)) < 0)
  goto done;

 git_oid_cpy(commit_id, git_commit_id(commit));

done:
 git_index_free(index);
 git_reference_free(head);
 git_commit_free(head_commit);
 git_commit_free(commit);
 return error;
}
