
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_BLOB ;
 int _repo ;
 int cl_assert (int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int git_odb_hashfile (int *,char*,int ) ;
 int git_oid_cmp (int *,int *) ;
 int git_repository_hashfile (int *,int ,char*,int ,char*) ;

void test_repo_hashfile__filtered(void)
{
 git_oid a, b;

 cl_repo_set_bool(_repo, "core.autocrlf", 1);

 cl_git_append2file("status/.gitattributes", "*.txt text\n*.bin binary\n\n");


 cl_git_mkfile("status/testfile.txt", "content\r\n");
 cl_git_mkfile("status/testfile.bin", "other\r\nstuff\r\n");


 cl_git_pass(git_odb_hashfile(&a, "status/testfile.txt", GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, "testfile.txt", GIT_OBJECT_BLOB, ((void*)0)));
 cl_assert(git_oid_cmp(&a, &b));


 cl_git_pass(git_odb_hashfile(&a, "status/testfile.bin", GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, "testfile.bin", GIT_OBJECT_BLOB, ((void*)0)));
 cl_assert_equal_oid(&a, &b);


 cl_git_pass(git_odb_hashfile(&a, "status/testfile.txt", GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, "testfile.txt", GIT_OBJECT_BLOB, "foo.bin"));
 cl_assert_equal_oid(&a, &b);


 cl_git_pass(git_odb_hashfile(&a, "status/testfile.bin", GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, "testfile.bin", GIT_OBJECT_BLOB, "foo.txt"));
 cl_assert(git_oid_cmp(&a, &b));


 cl_git_pass(git_odb_hashfile(&a, "status/testfile.txt", GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, "testfile.txt", GIT_OBJECT_BLOB, ""));
 cl_assert_equal_oid(&a, &b);

 cl_git_pass(git_odb_hashfile(&a, "status/testfile.bin", GIT_OBJECT_BLOB));
 cl_git_pass(git_repository_hashfile(&b, _repo, "testfile.bin", GIT_OBJECT_BLOB, ""));
 cl_assert_equal_oid(&a, &b);


 cl_git_fail(git_odb_hashfile(&a, "status/testfile.txt", 0));
 cl_git_fail(git_repository_hashfile(&b, _repo, "testfile.txt", GIT_OBJECT_ANY, ((void*)0)));
}
