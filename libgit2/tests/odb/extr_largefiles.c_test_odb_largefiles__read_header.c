
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object_t ;


 int GIT_OBJECT_BLOB ;
 int LARGEFILE_SIZE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_sz (int ,size_t) ;
 int cl_git_pass (int ) ;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 int git_odb_read_header (size_t*,int *,int ,int *) ;
 int odb ;
 int writefile (int *) ;

void test_odb_largefiles__read_header(void)
{
 git_oid oid;
 size_t len;
 git_object_t type;


 cl_skip();


 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE") ||
  !cl_is_env_set("GITTEST_SLOW"))
  cl_skip();

 writefile(&oid);
 cl_git_pass(git_odb_read_header(&len, &type, odb, &oid));

 cl_assert_equal_sz(LARGEFILE_SIZE, len);
 cl_assert_equal_i(GIT_OBJECT_BLOB, type);
}
