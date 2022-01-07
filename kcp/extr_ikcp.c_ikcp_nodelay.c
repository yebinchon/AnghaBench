
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodelay; int interval; int fastresend; int nocwnd; int rx_minrto; } ;
typedef TYPE_1__ ikcpcb ;


 int IKCP_RTO_MIN ;
 int IKCP_RTO_NDL ;

int ikcp_nodelay(ikcpcb *kcp, int nodelay, int interval, int resend, int nc)
{
 if (nodelay >= 0) {
  kcp->nodelay = nodelay;
  if (nodelay) {
   kcp->rx_minrto = IKCP_RTO_NDL;
  }
  else {
   kcp->rx_minrto = IKCP_RTO_MIN;
  }
 }
 if (interval >= 0) {
  if (interval > 5000) interval = 5000;
  else if (interval < 10) interval = 10;
  kcp->interval = interval;
 }
 if (resend >= 0) {
  kcp->fastresend = resend;
 }
 if (nc >= 0) {
  kcp->nocwnd = nc;
 }
 return 0;
}
