
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_time_t ;
struct TYPE_8__ {scalar_t__ email; scalar_t__ name; } ;
typedef TYPE_1__ git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
typedef int buf ;


 int CL_COMMIT_EMAIL ;
 int CL_COMMIT_MSG ;
 int CL_COMMIT_NAME ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_commit_create_v (int *,int *,char*,TYPE_1__*,TYPE_1__*,int *,char const*,int *,int,int *) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_object_free (int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_oid_tostr (char*,int,int *) ;
 int git_reference_free (int *) ;
 char* git_reference_name (int *) ;
 int git_repository_index (int **,int *) ;
 int git_revparse_ext (int **,int **,int *,char*) ;
 int git_signature_free (TYPE_1__*) ;
 int git_signature_new (TYPE_1__**,int ,int ,int ,int ) ;
 int git_signature_now (TYPE_1__**,int ,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int *,int *) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;

void cl_repo_commit_from_index(
 git_oid *out,
 git_repository *repo,
 git_signature *sig,
 git_time_t time,
 const char *msg)
{
 git_index *index;
 git_oid commit_id, tree_id;
 git_object *parent = ((void*)0);
 git_reference *ref = ((void*)0);
 git_tree *tree = ((void*)0);
 char buf[128];
 int free_sig = (sig == ((void*)0));


 git_revparse_ext(&parent, &ref, repo, "HEAD");


 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_write_tree(&tree_id, index));
 cl_git_pass(git_index_write(index));
 git_index_free(index);

 cl_git_pass(git_tree_lookup(&tree, repo, &tree_id));

 if (sig)
  cl_assert(sig->name && sig->email);
 else if (!time)
  cl_git_pass(git_signature_now(&sig, CL_COMMIT_NAME, CL_COMMIT_EMAIL));
 else
  cl_git_pass(git_signature_new(
   &sig, CL_COMMIT_NAME, CL_COMMIT_EMAIL, time, 0));

 if (!msg) {
  strcpy(buf, CL_COMMIT_MSG);
  git_oid_tostr(buf + strlen(CL_COMMIT_MSG),
   sizeof(buf) - strlen(CL_COMMIT_MSG), &tree_id);
  msg = buf;
 }

 cl_git_pass(git_commit_create_v(
  &commit_id, repo, ref ? git_reference_name(ref) : "HEAD",
  sig, sig, ((void*)0), msg, tree, parent ? 1 : 0, parent));

 if (out)
  git_oid_cpy(out, &commit_id);

 git_object_free(parent);
 git_reference_free(ref);
 if (free_sig)
  git_signature_free(sig);
 git_tree_free(tree);
}
