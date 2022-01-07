
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_dev {int dummy; } ;


 int IntStatusMasked_Reg ;
 int reg_read (struct lanai_dev const*,int ) ;

__attribute__((used)) static inline u32 intr_pending(const struct lanai_dev *lanai)
{
 return reg_read(lanai, IntStatusMasked_Reg);
}
