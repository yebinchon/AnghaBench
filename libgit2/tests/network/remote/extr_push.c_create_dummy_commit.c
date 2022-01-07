
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_index ;


 int cl_git_pass (int ) ;
 int git_commit_create_from_ids (int *,int *,int *,int *,int *,int *,char*,int *,int ,int *) ;
 int git_index_free (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_reference_create (int **,int *,char*,int *,int,char*) ;
 int git_repository_index (int **,int *) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;

void create_dummy_commit(git_reference **out, git_repository *repo)
{
 git_index *index;
 git_oid tree_id, commit_id;
 git_signature *sig;

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_write_tree(&tree_id, index));
 git_index_free(index);

 cl_git_pass(git_signature_now(&sig, "Pusher Joe", "pjoe"));
 cl_git_pass(git_commit_create_from_ids(&commit_id, repo, ((void*)0), sig, sig,
            ((void*)0), "Empty tree\n", &tree_id, 0, ((void*)0)));
 cl_git_pass(git_reference_create(out, repo, "refs/heads/empty-tree", &commit_id, 1, "commit yo"));
 git_signature_free(sig);
}
