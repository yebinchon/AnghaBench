
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int create_fake_stash_reference_and_reflog (int *) ;
 int test_object_inrepo (char*,char*,int *) ;

void test_refs_revparse__reflog_of_a_ref_under_refs(void)
{
 git_repository *repo = cl_git_sandbox_init("testrepo.git");

 test_object_inrepo("refs/fakestash", ((void*)0), repo);

 create_fake_stash_reference_and_reflog(repo);
 test_object_inrepo("refs/fakestash", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);
 test_object_inrepo("refs/fakestash@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);
 test_object_inrepo("fakestash", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);
 test_object_inrepo("fakestash@{0}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", repo);

 cl_git_sandbox_cleanup();
}
