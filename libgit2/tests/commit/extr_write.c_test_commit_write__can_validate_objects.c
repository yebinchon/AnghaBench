
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int create_commit_from_ids (int *,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 char* parent_id_str ;
 char* tree_id_str ;

void test_commit_write__can_validate_objects(void)
{
 git_oid tree_id, parent_id, commit_id;


 git_oid_fromstr(&tree_id, tree_id_str);
 git_oid_fromstr(&parent_id, parent_id_str);
 cl_git_pass(create_commit_from_ids(&commit_id, &tree_id, &parent_id));


 git_oid_fromstr(&tree_id, "1234567890123456789012345678901234567890");
 git_oid_fromstr(&parent_id, parent_id_str);
 cl_git_fail(create_commit_from_ids(&commit_id, &tree_id, &parent_id));


 git_oid_fromstr(&tree_id, tree_id_str);
 git_oid_fromstr(&parent_id, "1234567890123456789012345678901234567890");
 cl_git_fail(create_commit_from_ids(&commit_id, &tree_id, &parent_id));


 git_oid_fromstr(&tree_id, parent_id_str);
 git_oid_fromstr(&parent_id, tree_id_str);
 cl_git_fail(create_commit_from_ids(&commit_id, &tree_id, &parent_id));
}
