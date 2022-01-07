
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_git_fail_with (int,int ) ;
 int g_repo ;
 int git_commit_create_with_signature (int *,int ,char const*,char const*,char*) ;

void test_commit_write__attach_signature_checks_objects(void)
{
 const char *sig = "magic word: pretty please";
 const char *badtree = "tree 6b79e22d69bf46e289df0345a14ca059dfc9bdf6\nparent 34734e478d6cf50c27c9d69026d93974d052c454\nauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\ncommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\na simple commit which does not work\n";






 const char *badparent = "tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\nparent 34734e478d6cf50c27c9d69026d93974d052c454\nauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\ncommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\na simple commit which does not work\n";






 git_oid id;

 cl_git_fail_with(-1, git_commit_create_with_signature(&id, g_repo, badtree, sig, "magicsig"));
 cl_git_fail_with(-1, git_commit_create_with_signature(&id, g_repo, badparent, sig, "magicsig"));

}
