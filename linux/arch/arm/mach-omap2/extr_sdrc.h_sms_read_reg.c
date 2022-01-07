
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP_SMS_REGADDR (int ) ;
 int readl_relaxed (int ) ;

__attribute__((used)) static inline u32 sms_read_reg(u16 reg)
{
 return readl_relaxed(OMAP_SMS_REGADDR(reg));
}
