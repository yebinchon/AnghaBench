
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
struct TYPE_3__ {int base; } ;


 int cl_git_pass (int ) ;
 int git_merge_driver_register (char*,int *) ;
 TYPE_2__ test_driver_custom ;
 TYPE_1__ test_driver_wildcard ;

__attribute__((used)) static void test_drivers_register(void)
{
 cl_git_pass(git_merge_driver_register("custom", &test_driver_custom.base));
 cl_git_pass(git_merge_driver_register("*", &test_driver_wildcard.base));
}
