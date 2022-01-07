
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int clr_boot; } ;
union cvmx_spxx_trn4_ctl {void* u64; TYPE_2__ s; } ;
struct TYPE_7__ {scalar_t__ srxtrn; } ;
union cvmx_spxx_clk_stat {TYPE_3__ s; void* u64; } ;
struct TYPE_5__ {int clkdly; int statrcv; int sndtrn; int drptrn; int rcvtrn; int srxdlck; scalar_t__ statdrv; scalar_t__ runbist; scalar_t__ seetrn; } ;
union cvmx_spxx_clk_ctl {void* u64; TYPE_1__ s; } ;
typedef unsigned long long uint64_t ;
typedef int cvmx_spi_mode_t ;
struct TYPE_8__ {int cpu_clock_hz; } ;


 int CVMX_SPXX_CLK_CTL (int) ;
 int CVMX_SPXX_CLK_STAT (int) ;
 int CVMX_SPXX_TRN4_CTL (int) ;
 int __delay (int) ;
 int cvmx_dprintf (char*,int) ;
 unsigned long long cvmx_get_cycle () ;
 void* cvmx_read_csr (int ) ;
 TYPE_4__* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,void*) ;

int cvmx_spi_training_cb(int interface, cvmx_spi_mode_t mode, int timeout)
{
 union cvmx_spxx_trn4_ctl spxx_trn4_ctl;
 union cvmx_spxx_clk_stat stat;
 uint64_t MS = cvmx_sysinfo_get()->cpu_clock_hz / 1000;
 uint64_t timeout_time = cvmx_get_cycle() + 1000ull * MS * timeout;
 int rx_training_needed;


 union cvmx_spxx_clk_ctl spxx_clk_ctl;
 spxx_clk_ctl.u64 = 0;
 spxx_clk_ctl.s.seetrn = 0;
 spxx_clk_ctl.s.clkdly = 0x10;
 spxx_clk_ctl.s.runbist = 0;
 spxx_clk_ctl.s.statdrv = 0;

 spxx_clk_ctl.s.statrcv = 1;
 spxx_clk_ctl.s.sndtrn = 1;
 spxx_clk_ctl.s.drptrn = 1;
 spxx_clk_ctl.s.rcvtrn = 1;
 spxx_clk_ctl.s.srxdlck = 1;
 cvmx_write_csr(CVMX_SPXX_CLK_CTL(interface), spxx_clk_ctl.u64);
 __delay(1000 * MS);


 spxx_trn4_ctl.u64 = cvmx_read_csr(CVMX_SPXX_TRN4_CTL(interface));
 spxx_trn4_ctl.s.clr_boot = 1;
 cvmx_write_csr(CVMX_SPXX_TRN4_CTL(interface), spxx_trn4_ctl.u64);


 cvmx_dprintf("SPI%d: Waiting for training\n", interface);
 __delay(1000 * MS);

 timeout_time = cvmx_get_cycle() + 1000ull * MS * 600;




 rx_training_needed = 500;
 do {
  stat.u64 = cvmx_read_csr(CVMX_SPXX_CLK_STAT(interface));
  if (stat.s.srxtrn && rx_training_needed) {
   rx_training_needed--;
   cvmx_write_csr(CVMX_SPXX_CLK_STAT(interface), stat.u64);
   stat.s.srxtrn = 0;
  }
  if (cvmx_get_cycle() > timeout_time) {
   cvmx_dprintf("SPI%d: Timeout\n", interface);
   return -1;
  }
 } while (stat.s.srxtrn == 0);

 return 0;
}
