
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCF_WTM_WCR ;
 int writew (int ,int ) ;

void wtm_init(void)
{

 writew(0, MCF_WTM_WCR);
}
