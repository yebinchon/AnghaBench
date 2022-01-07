
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFGPT0_SETUP ;
 int inw (int ) ;
 int outw (int,int ) ;

void disable_mfgpt0_counter(void)
{
 outw(inw(MFGPT0_SETUP) & 0x7fff, MFGPT0_SETUP);
}
