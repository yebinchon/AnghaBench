
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;
typedef int git_commit ;


 int cl_git_pass (int ) ;
 int clar__assert (int ,char const*,int,char*,int *,int) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_oid_equal (int ,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int repo ;

__attribute__((used)) static void assert_commit_is_head_(git_commit *c, const char *file, int line)
{
 git_commit *head;
 cl_git_pass(git_revparse_single((git_object **)&head, repo, "HEAD"));
 clar__assert(git_oid_equal(git_commit_id(c), git_commit_id(head)), file, line, "Commit is not the HEAD", ((void*)0), 1);
 git_commit_free(head);
}
