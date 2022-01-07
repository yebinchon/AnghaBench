
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ST0_BEV ;
 unsigned int STATUSF_IP2 ;
 scalar_t__ ebase ;
 int irq_cpu_online () ;
 unsigned int set_c0_status (int ) ;
 int write_c0_ebase (int ) ;
 int write_c0_status (unsigned int) ;

__attribute__((used)) static void paravirt_init_secondary(void)
{
 unsigned int sr;

 sr = set_c0_status(ST0_BEV);
 write_c0_ebase((u32)ebase);

 sr |= STATUSF_IP2;
 write_c0_status(sr);

 irq_cpu_online();
}
