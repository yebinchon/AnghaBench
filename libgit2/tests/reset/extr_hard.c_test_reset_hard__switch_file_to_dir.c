
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_signature ;
typedef int git_oid ;
typedef int git_odb ;
typedef int git_object ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char* path; int mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_git_pass (int ) ;
 int git_commit_create (int *,int ,int *,int *,int *,int *,char*,int *,int ,int *) ;
 int git_index_add (int *,TYPE_2__*) ;
 int git_index_clear (int *) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_write_tree_to (int *,int *,int ) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_odb_free (int *) ;
 int git_odb_write (int *,int *,char*,int ,int ) ;
 int git_repository_odb (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int repo ;

void test_reset_hard__switch_file_to_dir(void)
{
 git_index_entry entry = {{ 0 }};
 git_index *idx;
 git_odb *odb;
 git_object *commit;
 git_tree *tree;
 git_signature *sig;
 git_oid src_tree_id, tgt_tree_id;
 git_oid src_id, tgt_id;

 cl_git_pass(git_repository_odb(&odb, repo));
 cl_git_pass(git_odb_write(&entry.id, odb, "", 0, GIT_OBJECT_BLOB));
 git_odb_free(odb);

 entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_index_new(&idx));
 cl_git_pass(git_signature_now(&sig, "foo", "bar"));


 entry.path = "README";
 cl_git_pass(git_index_add(idx, &entry));
 entry.path = "dir";
 cl_git_pass(git_index_add(idx, &entry));

 cl_git_pass(git_index_write_tree_to(&src_tree_id, idx, repo));
 cl_git_pass(git_index_clear(idx));

 cl_git_pass(git_tree_lookup(&tree, repo, &src_tree_id));
 cl_git_pass(git_commit_create(&src_id, repo, ((void*)0), sig, sig, ((void*)0), "foo", tree, 0, ((void*)0)));
 git_tree_free(tree);


 entry.path = "README";
 cl_git_pass(git_index_add(idx, &entry));
 entry.path = "dir/FILE";
 cl_git_pass(git_index_add(idx, &entry));

 cl_git_pass(git_index_write_tree_to(&tgt_tree_id, idx, repo));
 cl_git_pass(git_tree_lookup(&tree, repo, &tgt_tree_id));
 cl_git_pass(git_commit_create(&tgt_id, repo, ((void*)0), sig, sig, ((void*)0), "foo", tree, 0, ((void*)0)));
 git_tree_free(tree);
 git_index_free(idx);
 git_signature_free(sig);


 cl_git_pass(git_object_lookup(&commit, repo, &src_id, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, commit, GIT_RESET_HARD, ((void*)0)));
 git_object_free(commit);


 cl_git_pass(git_object_lookup(&commit, repo, &tgt_id, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, commit, GIT_RESET_HARD, ((void*)0)));
 git_object_free(commit);
}
