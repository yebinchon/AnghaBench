
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mm; } ;


 int EINVAL ;
 TYPE_1__* current ;
 int do_mpx_bt_fault () ;
 int kernel_managing_mpx_tables (int ) ;

int mpx_handle_bd_fault(void)
{




 if (!kernel_managing_mpx_tables(current->mm))
  return -EINVAL;

 return do_mpx_bt_fault();
}
