
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int address; } ;


 scalar_t__ SIGP_CC_STATUS_STORED ;
 int SIGP_SENSE_RUNNING ;
 scalar_t__ __pcpu_sigp (int ,int ,int ,int *) ;

__attribute__((used)) static inline int pcpu_running(struct pcpu *pcpu)
{
 if (__pcpu_sigp(pcpu->address, SIGP_SENSE_RUNNING,
   0, ((void*)0)) != SIGP_CC_STATUS_STORED)
  return 1;

 return 0;
}
