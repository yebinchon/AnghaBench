
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_type; } ;



 int CVMX_GPIO_BIT_CFGX (int) ;
 int CVMX_GPIO_TX_SET ;
 int cvmx_write_csr (int ,int) ;
 TYPE_1__* octeon_bootinfo ;
 int octeon_kill_core (int *) ;
 int octeon_write_lcd (char*) ;
 int smp_call_function (int (*) (int *),int *,int ) ;

__attribute__((used)) static void octeon_halt(void)
{
 smp_call_function(octeon_kill_core, ((void*)0), 0);

 switch (octeon_bootinfo->board_type) {
 case 128:

  cvmx_write_csr(CVMX_GPIO_BIT_CFGX(12), 1);
  cvmx_write_csr(CVMX_GPIO_TX_SET, 0x1000);
  break;
 default:
  octeon_write_lcd("PowerOff");
  break;
 }

 octeon_kill_core(((void*)0));
}
