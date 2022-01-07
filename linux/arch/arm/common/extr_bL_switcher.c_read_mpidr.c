
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MPIDR_HWID_BITMASK ;

__attribute__((used)) static int read_mpidr(void)
{
 unsigned int id;
 asm volatile ("mrc p15, 0, %0, c0, c0, 5" : "=r" (id));
 return id & MPIDR_HWID_BITMASK;
}
