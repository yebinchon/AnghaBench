
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ BPF_REG_0 ;

__attribute__((used)) static bool is_axreg(u32 reg)
{
 return reg == BPF_REG_0;
}
