
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int annotated_count; char** heads; int ** annotated; } ;
typedef TYPE_1__ merge_options ;
typedef int git_tree ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;
typedef int git_annotated_commit ;
struct TYPE_5__ {int * message; } ;


 int GIT_OBJECT_COMMIT ;
 char* MERGE_COMMIT_MSG ;
 int ** calloc (int,int) ;
 int check_lg2 (int,char*,int *) ;
 int fprintf (int ,char*,char*) ;
 int free (int **) ;
 int git_annotated_commit_id (int *) ;
 int git_branch_name (char const**,int *) ;
 int git_commit_create (int *,int *,int ,int *,int *,int *,char*,int *,int,int const**) ;
 int git_commit_lookup (int **,int *,int ) ;
 TYPE_2__* git_error_last () ;
 int git_index_write_tree (int *,int *) ;
 char* git_oid_tostr_s (int ) ;
 int git_reference_dwim (int **,int *,char*) ;
 int git_reference_name (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int *) ;
 int git_repository_state_cleanup (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int git_tree_lookup (int **,int *,int *) ;
 char* malloc (size_t) ;
 scalar_t__ resolve_refish (int **,int *,char*) ;
 void* snprintf (char*,size_t,char*,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int create_merge_commit(git_repository *repo, git_index *index, merge_options *opts)
{
 git_oid tree_oid, commit_oid;
 git_tree *tree;
 git_signature *sign;
 git_reference *merge_ref = ((void*)0);
 git_annotated_commit *merge_commit;
 git_reference *head_ref;
 git_commit **parents = calloc(opts->annotated_count + 1, sizeof(git_commit *));
 const char *msg_target = ((void*)0);
 size_t msglen = 0;
 char *msg;
 size_t i;
 int err;


 check_lg2(git_repository_head(&head_ref, repo), "failed to get repo HEAD", ((void*)0));
 if (resolve_refish(&merge_commit, repo, opts->heads[0])) {
  fprintf(stderr, "failed to resolve refish %s", opts->heads[0]);
  free(parents);
  return -1;
 }


 err = git_reference_dwim(&merge_ref, repo, opts->heads[0]);
 check_lg2(err, "failed to DWIM reference", git_error_last()->message);


 check_lg2(git_signature_now(&sign, "Me", "me@example.com"), "failed to create signature", ((void*)0));



 if (merge_ref != ((void*)0)) {
  check_lg2(git_branch_name(&msg_target, merge_ref), "failed to get branch name of merged ref", ((void*)0));
 } else {
  msg_target = git_oid_tostr_s(git_annotated_commit_id(merge_commit));
 }

 msglen = snprintf(((void*)0), 0, "Merge %s '%s'", (merge_ref ? "branch" : "commit"), msg_target);
 if (msglen > 0) msglen++;
 msg = malloc(msglen);
 err = snprintf(msg, msglen, "Merge %s '%s'", (merge_ref ? "branch" : "commit"), msg_target);


 if (err < 0) goto cleanup;


 err = git_reference_peel((git_object **)&parents[0], head_ref, GIT_OBJECT_COMMIT);
 check_lg2(err, "failed to peel head reference", ((void*)0));
 for (i = 0; i < opts->annotated_count; i++) {
  git_commit_lookup(&parents[i + 1], repo, git_annotated_commit_id(opts->annotated[i]));
 }


 check_lg2(git_index_write_tree(&tree_oid, index), "failed to write merged tree", ((void*)0));
 check_lg2(git_tree_lookup(&tree, repo, &tree_oid), "failed to lookup tree", ((void*)0));


 err = git_commit_create(&commit_oid,
                         repo, git_reference_name(head_ref),
                         sign, sign,
                         ((void*)0), msg,
                         tree,
                         opts->annotated_count + 1, (const git_commit **)parents);
 check_lg2(err, "failed to create commit", ((void*)0));


 git_repository_state_cleanup(repo);

cleanup:
 free(parents);
 return err;
}
