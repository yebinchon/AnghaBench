
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_c0_status (int) ;

__attribute__((used)) static inline void disable_local_irq(unsigned int ip)
{
 int ipnum = 0x100 << ip;

 clear_c0_status(ipnum);
}
