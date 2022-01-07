
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_dev {int dummy; } ;


 int sram_addr (struct lanai_dev const*,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void sram_write(const struct lanai_dev *lanai,
 u32 val, int offset)
{
 writel(val, sram_addr(lanai, offset));
}
