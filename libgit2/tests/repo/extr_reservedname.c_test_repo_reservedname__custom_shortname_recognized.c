
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int O_CREAT ;
 int O_RDWR ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,size_t) ;
 int cl_assert_equal_s (char*,int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_git_write2file (char*,char*,int ,int,int) ;
 int cl_must_pass (int ) ;
 int cl_sandbox_supports_8dot3 () ;
 int clar__skip () ;
 int git_repository__reserved_names (TYPE_1__**,size_t*,int *,int) ;
 int p_rename (char*,char*) ;

void test_repo_reservedname__custom_shortname_recognized(void)
{
}
