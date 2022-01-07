
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {scalar_t__ si_type; int regspacing; unsigned char (* inputb ) (struct si_sm_io*,int) ;int (* io_cleanup ) (struct si_sm_io*) ;int (* outputb ) (struct si_sm_io*,int,int) ;int dev; scalar_t__ (* io_setup ) (struct si_sm_io*) ;scalar_t__ regshift; int regsize; } ;


 int DEFAULT_REGSIZE ;
 int DEFAULT_REGSPACING ;
 scalar_t__ SI_KCS ;
 int dev_err (int ,char*) ;
 scalar_t__ stub1 (struct si_sm_io*) ;
 int stub2 (struct si_sm_io*,int,int) ;
 unsigned char stub3 (struct si_sm_io*,int) ;
 int stub4 (struct si_sm_io*) ;

__attribute__((used)) static int ipmi_pci_probe_regspacing(struct si_sm_io *io)
{
 if (io->si_type == SI_KCS) {
  unsigned char status;
  int regspacing;

  io->regsize = DEFAULT_REGSIZE;
  io->regshift = 0;


  for (regspacing = DEFAULT_REGSPACING; regspacing <= 16;) {
   io->regspacing = regspacing;
   if (io->io_setup(io)) {
    dev_err(io->dev, "Could not setup I/O space\n");
    return DEFAULT_REGSPACING;
   }

   io->outputb(io, 1, 0x10);

   status = io->inputb(io, 1);
   io->io_cleanup(io);
   if (status)
    return regspacing;
   regspacing *= 4;
  }
 }
 return DEFAULT_REGSPACING;
}
