
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int OCTEON_BL_FLAG_CONSOLE_UART1 ;
 TYPE_1__* octeon_boot_desc_ptr ;

__attribute__((used)) static int octeon_get_boot_uart(void)
{
 return (octeon_boot_desc_ptr->flags & OCTEON_BL_FLAG_CONSOLE_UART1) ?
  1 : 0;
}
