
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_odb_write (int *,int ,int ,int ,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int odb ;

void test_odb_largefiles__write_from_memory(void)
{
 git_oid expected, oid;
 git_buf buf = GIT_BUF_INIT;
 size_t i;


 cl_skip();


 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE") ||
  !cl_is_env_set("GITTEST_INVASIVE_MEMORY") ||
  !cl_is_env_set("GITTEST_SLOW"))
  cl_skip();

 for (i = 0; i < (3041*126103); i++)
  cl_git_pass(git_buf_puts(&buf, "Hello, world.\n"));

 git_oid_fromstr(&expected, "3fb56989cca483b21ba7cb0a6edb229d10e1c26c");
 cl_git_pass(git_odb_write(&oid, odb, buf.ptr, buf.size, GIT_OBJECT_BLOB));

 cl_assert_equal_oid(&expected, &oid);
}
