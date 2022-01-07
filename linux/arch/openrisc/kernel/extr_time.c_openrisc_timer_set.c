
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPR_TTCR ;
 int mtspr (int ,unsigned long) ;

inline void openrisc_timer_set(unsigned long count)
{
 mtspr(SPR_TTCR, count);
}
