
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_object ;
typedef int git_odb ;


 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_commit_create_with_signature (int *,int ,char const*,char const*,char*) ;
 int git_odb_free (int *) ;
 int git_odb_object_data (int *) ;
 int git_odb_object_free (int *) ;
 int git_odb_read (int **,int *,int *) ;
 int git_repository_odb (int **,int ) ;

void test_commit_write__attach_singleline_signature(void)
{
 const char *sig = "magic word: pretty please";

 const char *data = "tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\nparent 8496071c1b46c854b31185ea97743be6a8774479\nauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\ncommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\na simple commit which works\n";






 const char *complete = "tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\nparent 8496071c1b46c854b31185ea97743be6a8774479\nauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\ncommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\nmagicsig magic word: pretty please\n\na simple commit which works\n";







 git_oid id;
 git_odb *odb;
 git_odb_object *obj;

 cl_git_pass(git_commit_create_with_signature(&id, g_repo, data, sig, "magicsig"));

 cl_git_pass(git_repository_odb(&odb, g_repo));
 cl_git_pass(git_odb_read(&obj, odb, &id));
 cl_assert_equal_s(complete, git_odb_object_data(obj));

 git_odb_object_free(obj);
 git_odb_free(odb);
}
