
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {scalar_t__ si_type; int (* outputb ) (struct si_sm_io*,int ,int ) ;} ;


 int IPMI_BT_INTMASK_REG ;
 scalar_t__ SI_BT ;
 int stub1 (struct si_sm_io*,int ,int ) ;

void ipmi_irq_start_cleanup(struct si_sm_io *io)
{
 if (io->si_type == SI_BT)

  io->outputb(io, IPMI_BT_INTMASK_REG, 0);
}
