
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWITCH_REG_WDOG0 ;
 int SW_READ_REG (int ) ;

__attribute__((used)) static inline void wdt_reset_counter(void)
{
 SW_READ_REG(SWITCH_REG_WDOG0);
}
