
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_tests; int failed; } ;


 TYPE_1__* cur_tests ;
 int indent () ;
 int printf (char*,int) ;

int done_testing(void)
{
    indent();
    printf("1..%d\n", cur_tests->num_tests);
    return cur_tests->failed;
}
