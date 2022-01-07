
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_dev {int dummy; } ;


 int IntControlEna_Reg ;
 int reg_write (struct lanai_dev const*,int ,int ) ;

__attribute__((used)) static inline void intr_enable(const struct lanai_dev *lanai, u32 i)
{
 reg_write(lanai, i, IntControlEna_Reg);
}
