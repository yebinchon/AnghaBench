
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hex ;
typedef int git_oid ;
typedef int git_odb_object ;


 int GIT_EAMBIGUOUS ;
 int _odb ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int git_odb_exists_prefix (int *,int ,int *,int ) ;
 int git_odb_object_free (int *) ;
 int git_odb_object_id (int *) ;
 int git_odb_read_prefix (int **,int ,int *,int ) ;
 int git_oid_fromstrn (int *,char*,int ) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

void test_odb_mixed__dup_oid_prefix_0(void) {
 char hex[10];
 git_oid oid, found;
 git_odb_object *obj;



 strncpy(hex, "dea509d0", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_assert_equal_i(
  GIT_EAMBIGUOUS, git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 cl_assert_equal_i(
  GIT_EAMBIGUOUS, git_odb_exists_prefix(&found, _odb, &oid, strlen(hex)));

 strncpy(hex, "dea509d09", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 cl_git_pass(git_odb_exists_prefix(&found, _odb, &oid, strlen(hex)));
 cl_assert_equal_oid(&found, git_odb_object_id(obj));
 git_odb_object_free(obj);

 strncpy(hex, "dea509d0b", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 git_odb_object_free(obj);



 strncpy(hex, "81b5bff5", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_assert_equal_i(
  GIT_EAMBIGUOUS, git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 cl_assert_equal_i(
  GIT_EAMBIGUOUS, git_odb_exists_prefix(&found, _odb, &oid, strlen(hex)));

 strncpy(hex, "81b5bff5b", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 cl_git_pass(git_odb_exists_prefix(&found, _odb, &oid, strlen(hex)));
 cl_assert_equal_oid(&found, git_odb_object_id(obj));
 git_odb_object_free(obj);

 strncpy(hex, "81b5bff5f", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 git_odb_object_free(obj);



 strncpy(hex, "0ddeaded", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_assert_equal_i(
  GIT_EAMBIGUOUS, git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 cl_assert_equal_i(
  GIT_EAMBIGUOUS, git_odb_exists_prefix(&found, _odb, &oid, strlen(hex)));

 strncpy(hex, "0ddeaded9", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 cl_git_pass(git_odb_exists_prefix(&found, _odb, &oid, strlen(hex)));
 cl_assert_equal_oid(&found, git_odb_object_id(obj));
 git_odb_object_free(obj);

 strncpy(hex, "0ddeadede", sizeof(hex));
 cl_git_pass(git_oid_fromstrn(&oid, hex, strlen(hex)));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, strlen(hex)));
 git_odb_object_free(obj);
}
