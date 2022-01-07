
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; scalar_t__ size; } ;


 int cl_fixture_cleanup (int ) ;
 int cl_git_sandbox_cleanup () ;
 TYPE_1__ expected_fixture ;
 int g_index ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_index_free (int ) ;

void test_index_crlf__cleanup(void)
{
 git_index_free(g_index);
 cl_git_sandbox_cleanup();

 if (expected_fixture.size) {
  cl_fixture_cleanup(expected_fixture.ptr);
  git_buf_dispose(&expected_fixture);
 }
}
