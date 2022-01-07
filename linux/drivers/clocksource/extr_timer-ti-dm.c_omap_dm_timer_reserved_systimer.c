
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int omap_reserved_systimers ;

__attribute__((used)) static inline u32 omap_dm_timer_reserved_systimer(int id)
{
 return (omap_reserved_systimers & (1 << (id - 1))) ? 1 : 0;
}
