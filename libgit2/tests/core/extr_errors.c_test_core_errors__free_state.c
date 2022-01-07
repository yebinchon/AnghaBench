
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ git_error_state ;
struct TYPE_7__ {int message; int klass; } ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int git_error_clear () ;
 TYPE_5__* git_error_last () ;
 int git_error_set (int,char*,char*) ;
 int git_error_state_capture (TYPE_1__*,int) ;
 int git_error_state_free (TYPE_1__*) ;
 int git_error_state_restore (TYPE_1__*) ;

void test_core_errors__free_state(void)
{
 git_error_state err_state = {0};

 git_error_clear();

 git_error_set(42, "Foo: %s", "bar");
 cl_assert_equal_i(-1, git_error_state_capture(&err_state, -1));

 git_error_set(99, "Bar: %s", "foo");

 git_error_state_free(&err_state);

 cl_assert_equal_i(99, git_error_last()->klass);
 cl_assert_equal_s("Bar: foo", git_error_last()->message);

 git_error_state_restore(&err_state);

 cl_assert(git_error_last() == ((void*)0));
}
