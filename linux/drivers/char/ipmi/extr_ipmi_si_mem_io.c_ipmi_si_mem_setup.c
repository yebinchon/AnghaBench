
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned long addr_data; int regsize; int io_size; int regspacing; int io_cleanup; int * addr; int dev; int outputb; int inputb; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int SI_DEVICE_NAME ;
 int dev_warn (int ,char*,int) ;
 int intf_mem_inb ;
 int intf_mem_inl ;
 int intf_mem_inw ;
 int intf_mem_outb ;
 int intf_mem_outl ;
 int intf_mem_outw ;
 int * ioremap (unsigned long,int) ;
 int mem_cleanup ;
 int mem_inq ;
 int mem_outq ;
 int mem_region_cleanup (struct si_sm_io*,int) ;
 int * request_mem_region (unsigned long,int,int ) ;

int ipmi_si_mem_setup(struct si_sm_io *io)
{
 unsigned long addr = io->addr_data;
 int mapsize, idx;

 if (!addr)
  return -ENODEV;





 switch (io->regsize) {
 case 1:
  io->inputb = intf_mem_inb;
  io->outputb = intf_mem_outb;
  break;
 case 2:
  io->inputb = intf_mem_inw;
  io->outputb = intf_mem_outw;
  break;
 case 4:
  io->inputb = intf_mem_inl;
  io->outputb = intf_mem_outl;
  break;






 default:
  dev_warn(io->dev, "Invalid register size: %d\n",
    io->regsize);
  return -EINVAL;
 }







 for (idx = 0; idx < io->io_size; idx++) {
  if (request_mem_region(addr + idx * io->regspacing,
           io->regsize, SI_DEVICE_NAME) == ((void*)0)) {

   mem_region_cleanup(io, idx);
   return -EIO;
  }
 }
 mapsize = ((io->io_size * io->regspacing)
     - (io->regspacing - io->regsize));
 io->addr = ioremap(addr, mapsize);
 if (io->addr == ((void*)0)) {
  mem_region_cleanup(io, io->io_size);
  return -EIO;
 }

 io->io_cleanup = mem_cleanup;

 return 0;
}
