
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int assert_all_refnames_match (int ,int *) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int git_reference_foreach (int ,int ,int *) ;
 int git_vector_init (int *,int,int *) ;
 int p_mkdir (char*,int) ;
 int p_symlink (char*,char*) ;
 int refcmp_cb ;
 int refnames_with_symlink ;
 int refs_foreach_cb ;
 int repo ;

void test_refs_iterator__foreach_through_symlink(void)
{
 git_vector output;





 cl_git_pass(git_vector_init(&output, 32, &refcmp_cb));

 cl_git_pass(p_mkdir("refs", 0777));
 cl_git_mkfile("refs/a", "1234567890123456789012345678901234567890");
 cl_git_mkfile("refs/b", "1234567890123456789012345678901234567890");
 cl_git_mkfile("refs/c", "1234567890123456789012345678901234567890");
 cl_git_mkfile("refs/d", "1234567890123456789012345678901234567890");

 cl_git_pass(p_symlink("../../../refs", "testrepo.git/refs/heads/link"));

 cl_git_pass(git_reference_foreach(repo, refs_foreach_cb, &output));
 assert_all_refnames_match(refnames_with_symlink, &output);
}
