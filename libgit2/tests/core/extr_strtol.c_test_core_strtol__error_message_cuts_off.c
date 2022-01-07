
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message; } ;


 int assert_l32_fails (char*,int) ;
 int cl_assert (int ) ;
 TYPE_1__* git_error_last () ;
 int * strstr (int ,char*) ;

void test_core_strtol__error_message_cuts_off(void)
{
 assert_l32_fails("2147483657foobar", 10);
 cl_assert(strstr(git_error_last()->message, "2147483657") != ((void*)0));
 cl_assert(strstr(git_error_last()->message, "foobar") == ((void*)0));
}
