
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOPRIO_CLASS_BE ;
 int IOPRIO_NORM ;
 unsigned short IOPRIO_PRIO_VALUE (int ,int ) ;
 int ioprio_valid (unsigned short) ;
 int min (unsigned short,unsigned short) ;

int ioprio_best(unsigned short aprio, unsigned short bprio)
{
 if (!ioprio_valid(aprio))
  aprio = IOPRIO_PRIO_VALUE(IOPRIO_CLASS_BE, IOPRIO_NORM);
 if (!ioprio_valid(bprio))
  bprio = IOPRIO_PRIO_VALUE(IOPRIO_CLASS_BE, IOPRIO_NORM);

 return min(aprio, bprio);
}
