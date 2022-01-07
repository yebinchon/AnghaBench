
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned int addr_data; int io_size; int regspacing; int io_cleanup; int regsize; int dev; int outputb; int inputb; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int SI_DEVICE_NAME ;
 int dev_warn (int ,char*,int ) ;
 int port_cleanup ;
 int port_inb ;
 int port_inl ;
 int port_inw ;
 int port_outb ;
 int port_outl ;
 int port_outw ;
 int release_region (unsigned int,int ) ;
 int * request_region (unsigned int,int ,int ) ;

int ipmi_si_port_setup(struct si_sm_io *io)
{
 unsigned int addr = io->addr_data;
 int idx;

 if (!addr)
  return -ENODEV;





 switch (io->regsize) {
 case 1:
  io->inputb = port_inb;
  io->outputb = port_outb;
  break;
 case 2:
  io->inputb = port_inw;
  io->outputb = port_outw;
  break;
 case 4:
  io->inputb = port_inl;
  io->outputb = port_outl;
  break;
 default:
  dev_warn(io->dev, "Invalid register size: %d\n",
    io->regsize);
  return -EINVAL;
 }







 for (idx = 0; idx < io->io_size; idx++) {
  if (request_region(addr + idx * io->regspacing,
       io->regsize, SI_DEVICE_NAME) == ((void*)0)) {

   while (idx--)
    release_region(addr + idx * io->regspacing,
            io->regsize);
   return -EIO;
  }
 }

 io->io_cleanup = port_cleanup;

 return 0;
}
