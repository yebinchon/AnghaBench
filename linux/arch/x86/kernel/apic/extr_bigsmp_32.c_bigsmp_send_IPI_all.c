
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int default_send_IPI_mask_sequence_phys (int ,int) ;

__attribute__((used)) static void bigsmp_send_IPI_all(int vector)
{
 default_send_IPI_mask_sequence_phys(cpu_online_mask, vector);
}
