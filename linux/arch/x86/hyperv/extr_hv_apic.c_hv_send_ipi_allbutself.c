
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int hv_send_ipi_mask_allbutself (int ,int) ;

__attribute__((used)) static void hv_send_ipi_allbutself(int vector)
{
 hv_send_ipi_mask_allbutself(cpu_online_mask, vector);
}
