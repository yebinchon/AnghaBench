
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* output ) (char const*,int,TYPE_1__*,void*) ;} ;
typedef TYPE_1__ ikcpcb ;



void ikcp_setoutput(ikcpcb *kcp, int (*output)(const char *buf, int len,
 ikcpcb *kcp, void *user))
{
 kcp->output = output;
}
