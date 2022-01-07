
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int octeon_ciu3_mbox_send (int,int) ;

__attribute__((used)) static void octeon_78xx_send_ipi_single(int cpu, unsigned int action)
{
 int i;

 for (i = 0; i < 8; i++) {
  if (action & 1)
   octeon_ciu3_mbox_send(cpu, i);
  action >>= 1;
 }
}
