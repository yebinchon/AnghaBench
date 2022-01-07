
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 size_t ASC_ENABLE ;
 scalar_t__* mac_asc_regs ;

__attribute__((used)) static void mac_nosound(struct timer_list *unused)
{
 mac_asc_regs[ ASC_ENABLE ] = 0;
}
