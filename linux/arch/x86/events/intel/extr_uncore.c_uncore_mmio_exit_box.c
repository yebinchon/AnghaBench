
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {scalar_t__ io_addr; } ;


 int iounmap (scalar_t__) ;

void uncore_mmio_exit_box(struct intel_uncore_box *box)
{
 if (box->io_addr)
  iounmap(box->io_addr);
}
