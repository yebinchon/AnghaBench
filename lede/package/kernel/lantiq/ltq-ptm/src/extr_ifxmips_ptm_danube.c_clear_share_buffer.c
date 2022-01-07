
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IFX_REG_W32 (int ,int ) ;
 int * SB_RAM0_ADDR (int ) ;
 unsigned int SB_RAM0_DWLEN ;
 unsigned int SB_RAM1_DWLEN ;
 unsigned int SB_RAM2_DWLEN ;
 unsigned int SB_RAM3_DWLEN ;

__attribute__((used)) static inline void clear_share_buffer(void)
{
    volatile u32 *p = SB_RAM0_ADDR(0);
    unsigned int i;

    for ( i = 0; i < SB_RAM0_DWLEN + SB_RAM1_DWLEN + SB_RAM2_DWLEN + SB_RAM3_DWLEN; i++ )
        IFX_REG_W32(0, p++);
}
