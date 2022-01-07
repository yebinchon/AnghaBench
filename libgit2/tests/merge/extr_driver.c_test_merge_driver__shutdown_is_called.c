
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int initialized; int shutdown; } ;
struct TYPE_3__ {scalar_t__ shutdown; scalar_t__ initialized; } ;


 int cl_assert (int) ;
 int merge_branch () ;
 int set_gitattributes_to (char*) ;
 TYPE_2__ test_driver_custom ;
 TYPE_1__ test_driver_wildcard ;
 int test_drivers_register () ;
 int test_drivers_unregister () ;

void test_merge_driver__shutdown_is_called(void)
{
    test_driver_custom.initialized = 0;
    test_driver_custom.shutdown = 0;
    test_driver_wildcard.initialized = 0;
    test_driver_wildcard.shutdown = 0;


    set_gitattributes_to("custom");
    merge_branch();


 test_drivers_unregister();





 cl_assert(test_driver_custom.initialized);
 cl_assert(test_driver_custom.shutdown);
 cl_assert(!test_driver_wildcard.initialized);
 cl_assert(!test_driver_wildcard.shutdown);

 test_drivers_register();
}
