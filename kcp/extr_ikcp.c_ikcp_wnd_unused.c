
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nrcv_que; scalar_t__ rcv_wnd; } ;
typedef TYPE_1__ ikcpcb ;



__attribute__((used)) static int ikcp_wnd_unused(const ikcpcb *kcp)
{
 if (kcp->nrcv_que < kcp->rcv_wnd) {
  return kcp->rcv_wnd - kcp->nrcv_que;
 }
 return 0;
}
