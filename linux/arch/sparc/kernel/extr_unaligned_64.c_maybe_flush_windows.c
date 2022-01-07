
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flushw_user () ;

__attribute__((used)) static inline void maybe_flush_windows(unsigned int rs1, unsigned int rs2,
           unsigned int rd, int from_kernel)
{
 if (rs2 >= 16 || rs1 >= 16 || rd >= 16) {
  if (from_kernel != 0)
   __asm__ __volatile__("flushw");
  else
   flushw_user();
 }
}
