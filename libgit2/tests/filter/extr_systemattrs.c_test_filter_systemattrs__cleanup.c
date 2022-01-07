
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;


 int cl_git_sandbox_cleanup () ;
 int cl_must_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int p_unlink (int ) ;
 TYPE_1__ system_attr_path ;

void test_filter_systemattrs__cleanup(void)
{
 cl_must_pass(p_unlink(system_attr_path.ptr));
 git_buf_dispose(&system_attr_path);

 cl_git_sandbox_cleanup();
}
