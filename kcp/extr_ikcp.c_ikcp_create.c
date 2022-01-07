
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct IKCPCB {int dummy; } ;
struct TYPE_4__ {int mtu; int mss; char* buffer; int * writelog; int * output; int dead_link; scalar_t__ xmit; scalar_t__ nocwnd; int fastlimit; scalar_t__ fastresend; int ssthresh; scalar_t__ logmask; scalar_t__ updated; scalar_t__ nodelay; void* ts_flush; void* interval; scalar_t__ current; int rx_minrto; int rx_rto; scalar_t__ rx_rttval; scalar_t__ rx_srtt; scalar_t__ ackcount; scalar_t__ ackblock; int * acklist; scalar_t__ state; scalar_t__ nsnd_que; scalar_t__ nrcv_que; scalar_t__ nsnd_buf; scalar_t__ nrcv_buf; int rcv_buf; int snd_buf; int rcv_queue; int snd_queue; scalar_t__ stream; scalar_t__ probe; scalar_t__ incr; scalar_t__ cwnd; void* rmt_wnd; void* rcv_wnd; int snd_wnd; scalar_t__ probe_wait; scalar_t__ ts_probe; scalar_t__ ts_lastack; scalar_t__ ts_recent; scalar_t__ rcv_nxt; scalar_t__ snd_nxt; scalar_t__ snd_una; void* user; int conv; } ;
typedef TYPE_1__ ikcpcb ;
typedef int IUINT32 ;


 int IKCP_DEADLINK ;
 int IKCP_FASTACK_LIMIT ;
 void* IKCP_INTERVAL ;
 int IKCP_MTU_DEF ;
 int IKCP_OVERHEAD ;
 int IKCP_RTO_DEF ;
 int IKCP_RTO_MIN ;
 int IKCP_THRESH_INIT ;
 void* IKCP_WND_RCV ;
 int IKCP_WND_SND ;
 int ikcp_free (TYPE_1__*) ;
 scalar_t__ ikcp_malloc (int) ;
 int iqueue_init (int *) ;

ikcpcb* ikcp_create(IUINT32 conv, void *user)
{
 ikcpcb *kcp = (ikcpcb*)ikcp_malloc(sizeof(struct IKCPCB));
 if (kcp == ((void*)0)) return ((void*)0);
 kcp->conv = conv;
 kcp->user = user;
 kcp->snd_una = 0;
 kcp->snd_nxt = 0;
 kcp->rcv_nxt = 0;
 kcp->ts_recent = 0;
 kcp->ts_lastack = 0;
 kcp->ts_probe = 0;
 kcp->probe_wait = 0;
 kcp->snd_wnd = IKCP_WND_SND;
 kcp->rcv_wnd = IKCP_WND_RCV;
 kcp->rmt_wnd = IKCP_WND_RCV;
 kcp->cwnd = 0;
 kcp->incr = 0;
 kcp->probe = 0;
 kcp->mtu = IKCP_MTU_DEF;
 kcp->mss = kcp->mtu - IKCP_OVERHEAD;
 kcp->stream = 0;

 kcp->buffer = (char*)ikcp_malloc((kcp->mtu + IKCP_OVERHEAD) * 3);
 if (kcp->buffer == ((void*)0)) {
  ikcp_free(kcp);
  return ((void*)0);
 }

 iqueue_init(&kcp->snd_queue);
 iqueue_init(&kcp->rcv_queue);
 iqueue_init(&kcp->snd_buf);
 iqueue_init(&kcp->rcv_buf);
 kcp->nrcv_buf = 0;
 kcp->nsnd_buf = 0;
 kcp->nrcv_que = 0;
 kcp->nsnd_que = 0;
 kcp->state = 0;
 kcp->acklist = ((void*)0);
 kcp->ackblock = 0;
 kcp->ackcount = 0;
 kcp->rx_srtt = 0;
 kcp->rx_rttval = 0;
 kcp->rx_rto = IKCP_RTO_DEF;
 kcp->rx_minrto = IKCP_RTO_MIN;
 kcp->current = 0;
 kcp->interval = IKCP_INTERVAL;
 kcp->ts_flush = IKCP_INTERVAL;
 kcp->nodelay = 0;
 kcp->updated = 0;
 kcp->logmask = 0;
 kcp->ssthresh = IKCP_THRESH_INIT;
 kcp->fastresend = 0;
 kcp->fastlimit = IKCP_FASTACK_LIMIT;
 kcp->nocwnd = 0;
 kcp->xmit = 0;
 kcp->dead_link = IKCP_DEADLINK;
 kcp->output = ((void*)0);
 kcp->writelog = ((void*)0);

 return kcp;
}
