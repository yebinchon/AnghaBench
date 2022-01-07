
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_mkfile (char const*,char const*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,void*) ;
 int cleanup__remove_file ;
 int git_odb_hashfile (int *,char const*,int ) ;
 int git_oid_fromstr (int *,char const*) ;

void test_status_single__hash_single_empty_file(void)
{
 static const char file_name[] = "new_empty_file";
 static const char file_contents[] = "";
 static const char file_hash[] = "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391";

 git_oid expected_id, actual_id;


 git_oid_fromstr(&expected_id, file_hash);
 cl_git_mkfile(file_name, file_contents);
 cl_set_cleanup(&cleanup__remove_file, (void *)file_name);

 cl_git_pass(git_odb_hashfile(&actual_id, file_name, GIT_OBJECT_BLOB));
 cl_assert_equal_oid(&expected_id, &actual_id);
}
