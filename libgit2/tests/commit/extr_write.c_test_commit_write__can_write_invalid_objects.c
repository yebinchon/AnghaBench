
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int create_commit_from_ids (int *,int *,int *) ;
 int git_libgit2_opts (int ,int ) ;
 int git_oid_fromstr (int *,char*) ;
 char* parent_id_str ;
 char* tree_id_str ;

void test_commit_write__can_write_invalid_objects(void)
{
 git_oid expected_id, tree_id, parent_id, commit_id;

 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));


 git_oid_fromstr(&tree_id, tree_id_str);
 git_oid_fromstr(&parent_id, parent_id_str);

 git_oid_fromstr(&expected_id, "c8571bbec3a72c4bcad31648902e5a453f1adece");
 cl_git_pass(create_commit_from_ids(&commit_id, &tree_id, &parent_id));
 cl_assert_equal_oid(&expected_id, &commit_id);


 git_oid_fromstr(&tree_id, "1234567890123456789012345678901234567890");
 git_oid_fromstr(&parent_id, parent_id_str);

 git_oid_fromstr(&expected_id, "996008340b8e68d69bf3c28d7c57fb7ec3c8e202");
 cl_git_pass(create_commit_from_ids(&commit_id, &tree_id, &parent_id));
 cl_assert_equal_oid(&expected_id, &commit_id);


 git_oid_fromstr(&tree_id, tree_id_str);
 git_oid_fromstr(&parent_id, "1234567890123456789012345678901234567890");

 git_oid_fromstr(&expected_id, "d78f660cab89d9791ca6714b57978bf2a7e709fd");
 cl_git_pass(create_commit_from_ids(&commit_id, &tree_id, &parent_id));
 cl_assert_equal_oid(&expected_id, &commit_id);


 git_oid_fromstr(&tree_id, parent_id_str);
 git_oid_fromstr(&parent_id, tree_id_str);

 git_oid_fromstr(&expected_id, "5d80c07414e3f18792949699dfcacadf7748f361");
 cl_git_pass(create_commit_from_ids(&commit_id, &tree_id, &parent_id));
 cl_assert_equal_oid(&expected_id, &commit_id);
}
