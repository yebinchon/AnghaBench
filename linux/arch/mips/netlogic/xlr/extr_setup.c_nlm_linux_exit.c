
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int GPIO_SWRESET_REG ;
 int NETLOGIC_IO_GPIO_OFFSET ;
 int cpu_wait () ;
 int nlm_mmio_base (int ) ;
 int nlm_write_reg (int ,int ,int) ;

__attribute__((used)) static void nlm_linux_exit(void)
{
 uint64_t gpiobase;

 gpiobase = nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET);

 nlm_write_reg(gpiobase, GPIO_SWRESET_REG, 1);
 for ( ; ; )
  cpu_wait();
}
