
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_assert_equal_oid (int *,int *) ;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 int git_oid_fromstr (int *,char*) ;
 int writefile (int *) ;

void test_odb_largefiles__streamwrite(void)
{
 git_oid expected, oid;


 cl_skip();


 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE") ||
  !cl_is_env_set("GITTEST_SLOW"))
  cl_skip();

 git_oid_fromstr(&expected, "3fb56989cca483b21ba7cb0a6edb229d10e1c26c");
 writefile(&oid);

 cl_assert_equal_oid(&expected, &oid);
}
