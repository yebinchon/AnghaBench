
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned long uint32_t ;


 int A_BUS_L2_ERRORS ;
 int A_BUS_MEM_IO_ERRORS ;
 int A_L2_ECC_TAG ;
 int A_SCD_BUS_ERR_STATUS ;
 scalar_t__ G_SCD_BERR_DCODE (unsigned long) ;
 scalar_t__ G_SCD_BERR_RID (unsigned long) ;
 int G_SCD_BERR_TID (unsigned long) ;
 int IOADDR (int ) ;
 unsigned long csr_in32 (int ) ;
 int in64 (int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void check_bus_watcher(void)
{
 uint32_t status, l2_err, memio_err;





 status = csr_in32(IOADDR(A_SCD_BUS_ERR_STATUS));

 if (status & ~(1UL << 31)) {
  l2_err = csr_in32(IOADDR(A_BUS_L2_ERRORS));



  memio_err = csr_in32(IOADDR(A_BUS_MEM_IO_ERRORS));
  printk("Bus watcher error counters: %08x %08x\n", l2_err, memio_err);
  printk("\nLast recorded signature:\n");
  printk("Request %02x from %d, answered by %d with Dcode %d\n",
         (unsigned int)(G_SCD_BERR_TID(status) & 0x3f),
         (int)(G_SCD_BERR_TID(status) >> 6),
         (int)G_SCD_BERR_RID(status),
         (int)G_SCD_BERR_DCODE(status));



 } else {
  printk("Bus watcher indicates no error\n");
 }
}
