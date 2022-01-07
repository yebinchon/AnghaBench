
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFGPT0_SETUP ;
 int outw (int,int ) ;

void enable_mfgpt0_counter(void)
{
 outw(0xe310, MFGPT0_SETUP);
}
