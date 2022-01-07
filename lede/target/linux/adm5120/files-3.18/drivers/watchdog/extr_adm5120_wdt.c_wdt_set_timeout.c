
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SWITCH_REG_WDOG0 ;
 int SW_WRITE_REG (int ,int) ;
 int timeout ;

__attribute__((used)) static inline void wdt_set_timeout(void)
{
 u32 val = (1 << 31) | (((timeout * 100) & 0x7FFF) << 16);
 SW_WRITE_REG(SWITCH_REG_WDOG0, val);
}
