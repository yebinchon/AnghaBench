
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * acklist; } ;
typedef TYPE_1__ ikcpcb ;
typedef int IUINT32 ;



__attribute__((used)) static void ikcp_ack_get(const ikcpcb *kcp, int p, IUINT32 *sn, IUINT32 *ts)
{
 if (sn) sn[0] = kcp->acklist[p * 2 + 0];
 if (ts) ts[0] = kcp->acklist[p * 2 + 1];
}
