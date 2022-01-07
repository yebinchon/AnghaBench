
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ mmio_base; int sparse; } ;


 int MAX_IO_SPACES ;
 TYPE_1__* io_space ;
 scalar_t__ ioremap (scalar_t__,int ) ;
 int num_io_spaces ;
 int pr_err (char*,int) ;

__attribute__((used)) static unsigned int new_space(u64 phys_base, int sparse)
{
 u64 mmio_base;
 int i;

 if (phys_base == 0)
  return 0;

 mmio_base = (u64) ioremap(phys_base, 0);
 for (i = 0; i < num_io_spaces; i++)
  if (io_space[i].mmio_base == mmio_base &&
      io_space[i].sparse == sparse)
   return i;

 if (num_io_spaces == MAX_IO_SPACES) {
  pr_err("PCI: Too many IO port spaces "
   "(MAX_IO_SPACES=%lu)\n", MAX_IO_SPACES);
  return ~0;
 }

 i = num_io_spaces++;
 io_space[i].mmio_base = mmio_base;
 io_space[i].sparse = sparse;

 return i;
}
