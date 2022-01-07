
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* redo ) () ;} ;


 TYPE_1__* cont ;
 int generic_success () ;
 int stub1 () ;

__attribute__((used)) static void success_and_wakeup(void)
{
 generic_success();
 cont->redo();
}
