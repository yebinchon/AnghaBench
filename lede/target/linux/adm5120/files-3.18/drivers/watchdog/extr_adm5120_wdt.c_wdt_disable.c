
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWITCH_REG_WDOG0 ;
 int SW_WRITE_REG (int ,int) ;

__attribute__((used)) static inline void wdt_disable(void)
{
 SW_WRITE_REG(SWITCH_REG_WDOG0, 0x7FFF0000);
}
