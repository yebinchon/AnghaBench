
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_index ;


 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_repo_commit_from_index (int *,int *,int *,int ,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int *) ;

void setup_stash(git_repository *repo, git_signature *signature)
{
 git_index *index;

 cl_git_pass(git_repository_index(&index, repo));

 cl_git_mkfile("stash/what", "hello\n");
 cl_git_mkfile("stash/how", "small\n");
 cl_git_mkfile("stash/who", "world\n");
 cl_git_mkfile("stash/when", "now\n");
 cl_git_mkfile("stash/just.ignore", "me\n");

 cl_git_mkfile("stash/.gitignore", "*.ignore\n");

 cl_git_pass(git_index_add_bypath(index, "what"));
 cl_git_pass(git_index_add_bypath(index, "how"));
 cl_git_pass(git_index_add_bypath(index, "who"));
 cl_git_pass(git_index_add_bypath(index, ".gitignore"));

 cl_repo_commit_from_index(((void*)0), repo, signature, 0, "Initial commit");

 cl_git_rewritefile("stash/what", "goodbye\n");
 cl_git_rewritefile("stash/how", "not so small and\n");
 cl_git_rewritefile("stash/who", "funky world\n");
 cl_git_mkfile("stash/why", "would anybody use stash?\n");
 cl_git_mkfile("stash/where", "????\n");

 cl_git_pass(git_index_add_bypath(index, "what"));
 cl_git_pass(git_index_add_bypath(index, "how"));
 cl_git_pass(git_index_add_bypath(index, "why"));
 cl_git_pass(git_index_add_bypath(index, "where"));
 cl_git_pass(git_index_write(index));

 cl_git_rewritefile("stash/what", "see you later\n");
 cl_git_mkfile("stash/where", "....\n");

 git_index_free(index);
}
