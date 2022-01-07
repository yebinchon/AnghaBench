
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtu; int mss; char* buffer; } ;
typedef TYPE_1__ ikcpcb ;


 int IKCP_OVERHEAD ;
 int ikcp_free (char*) ;
 scalar_t__ ikcp_malloc (int) ;

int ikcp_setmtu(ikcpcb *kcp, int mtu)
{
 char *buffer;
 if (mtu < 50 || mtu < (int)IKCP_OVERHEAD)
  return -1;
 buffer = (char*)ikcp_malloc((mtu + IKCP_OVERHEAD) * 3);
 if (buffer == ((void*)0))
  return -2;
 kcp->mtu = mtu;
 kcp->mss = kcp->mtu - IKCP_OVERHEAD;
 ikcp_free(kcp->buffer);
 kcp->buffer = buffer;
 return 0;
}
