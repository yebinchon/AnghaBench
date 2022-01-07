
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int snd_wnd; int rcv_wnd; } ;
typedef TYPE_1__ ikcpcb ;


 int IKCP_WND_RCV ;
 int _imax_ (int,int ) ;

int ikcp_wndsize(ikcpcb *kcp, int sndwnd, int rcvwnd)
{
 if (kcp) {
  if (sndwnd > 0) {
   kcp->snd_wnd = sndwnd;
  }
  if (rcvwnd > 0) {
   kcp->rcv_wnd = _imax_(rcvwnd, IKCP_WND_RCV);
  }
 }
 return 0;
}
