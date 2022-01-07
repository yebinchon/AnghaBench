
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFX_REG_W32 (int,int ) ;
 int MBOX_IGU1_IER ;
 int MBOX_IGU1_ISRC ;
 int MBOX_IGU3_IER ;
 int MBOX_IGU3_ISRC ;

__attribute__((used)) static inline void init_mailbox(void)
{
    IFX_REG_W32(0xFFFFFFFF, MBOX_IGU1_ISRC);
    IFX_REG_W32(0x00000000, MBOX_IGU1_IER);
    IFX_REG_W32(0xFFFFFFFF, MBOX_IGU3_ISRC);
    IFX_REG_W32(0x00000000, MBOX_IGU3_IER);
}
