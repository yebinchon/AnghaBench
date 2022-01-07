
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interval; } ;
typedef TYPE_1__ ikcpcb ;



int ikcp_interval(ikcpcb *kcp, int interval)
{
 if (interval > 5000) interval = 5000;
 else if (interval < 10) interval = 10;
 kcp->interval = interval;
 return 0;
}
