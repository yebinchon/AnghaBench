
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int SIGP_CC_BUSY ;
 int __pcpu_sigp (int ,int ,unsigned long,int *) ;
 int cpu_relax () ;

__attribute__((used)) static inline int __pcpu_sigp_relax(u16 addr, u8 order, unsigned long parm)
{
 int cc;

 while (1) {
  cc = __pcpu_sigp(addr, order, parm, ((void*)0));
  if (cc != SIGP_CC_BUSY)
   return cc;
  cpu_relax();
 }
}
