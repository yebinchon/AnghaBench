
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_dev {scalar_t__ base; } ;
typedef enum lanai_register { ____Placeholder_lanai_register } lanai_register ;


 int RWDEBUG (char*,unsigned int,int,int ) ;
 int readl (int ) ;
 int reg_addr (struct lanai_dev const*,int) ;

__attribute__((used)) static inline u32 reg_read(const struct lanai_dev *lanai,
 enum lanai_register reg)
{
 u32 t;
 t = readl(reg_addr(lanai, reg));
 RWDEBUG("R [0x%08X] 0x%02X = 0x%08X\n", (unsigned int) lanai->base,
     (int) reg, t);
 return t;
}
