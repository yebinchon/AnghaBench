
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_srtt; int rx_rttval; int rx_minrto; int rx_rto; int interval; } ;
typedef TYPE_1__ ikcpcb ;
typedef int IINT32 ;


 int IKCP_RTO_MAX ;
 int _ibound_ (int ,int,int ) ;
 int _imax_ (int ,int) ;

__attribute__((used)) static void ikcp_update_ack(ikcpcb *kcp, IINT32 rtt)
{
 IINT32 rto = 0;
 if (kcp->rx_srtt == 0) {
  kcp->rx_srtt = rtt;
  kcp->rx_rttval = rtt / 2;
 } else {
  long delta = rtt - kcp->rx_srtt;
  if (delta < 0) delta = -delta;
  kcp->rx_rttval = (3 * kcp->rx_rttval + delta) / 4;
  kcp->rx_srtt = (7 * kcp->rx_srtt + rtt) / 8;
  if (kcp->rx_srtt < 1) kcp->rx_srtt = 1;
 }
 rto = kcp->rx_srtt + _imax_(kcp->interval, 4 * kcp->rx_rttval);
 kcp->rx_rto = _ibound_(kcp->rx_minrto, rto, IKCP_RTO_MAX);
}
