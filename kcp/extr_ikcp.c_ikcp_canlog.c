
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int logmask; int * writelog; } ;
typedef TYPE_1__ ikcpcb ;



__attribute__((used)) static int ikcp_canlog(const ikcpcb *kcp, int mask)
{
 if ((mask & kcp->logmask) == 0 || kcp->writelog == ((void*)0)) return 0;
 return 1;
}
