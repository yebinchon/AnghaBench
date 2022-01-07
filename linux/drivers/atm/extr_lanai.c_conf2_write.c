
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int conf2; } ;


 int Config2_Reg ;
 int reg_write (struct lanai_dev const*,int ,int ) ;

__attribute__((used)) static inline void conf2_write(const struct lanai_dev *lanai)
{
 reg_write(lanai, lanai->conf2, Config2_Reg);
}
