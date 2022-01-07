
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AUX_REG ;
 int BIT (int ) ;
 int BPF_REG_5 ;
 int BPF_REG_7 ;
 int BPF_REG_8 ;
 int BPF_REG_9 ;
 int BPF_REG_AX ;

__attribute__((used)) static bool is_ereg(u32 reg)
{
 return (1 << reg) & (BIT(BPF_REG_5) |
        BIT(AUX_REG) |
        BIT(BPF_REG_7) |
        BIT(BPF_REG_8) |
        BIT(BPF_REG_9) |
        BIT(BPF_REG_AX));
}
