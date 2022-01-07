
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int size; scalar_t__ sector; } ;
struct drbd_request {unsigned int rq_state; scalar_t__ net_done_jif; scalar_t__ acked_jif; scalar_t__ pre_send_jif; scalar_t__ pre_submit_jif; scalar_t__ in_actlog_jif; scalar_t__ start_jif; TYPE_1__ i; int epoch; } ;


 unsigned int RQ_IN_ACT_LOG ;
 unsigned int RQ_LOCAL_PENDING ;
 unsigned int RQ_NET_DONE ;
 unsigned int RQ_NET_PENDING ;
 unsigned int RQ_NET_SENT ;
 unsigned int RQ_WRITE ;
 int jiffies_to_msecs (scalar_t__) ;
 int seq_print_age_or_dash (struct seq_file*,unsigned int,scalar_t__) ;
 int seq_print_request_state (struct seq_file*,struct drbd_request*) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static void seq_print_one_request(struct seq_file *m, struct drbd_request *req, unsigned long now)
{

 unsigned int s = req->rq_state;


 seq_printf(m, "0x%x\t%llu\t%u\t%s",
  req->epoch,
  (unsigned long long)req->i.sector, req->i.size >> 9,
  (s & RQ_WRITE) ? "W" : "R");


 seq_printf(m, "\t%d", jiffies_to_msecs(now - req->start_jif));
 seq_print_age_or_dash(m, s & RQ_IN_ACT_LOG, now - req->in_actlog_jif);
 seq_print_age_or_dash(m, s & RQ_LOCAL_PENDING, now - req->pre_submit_jif);


 seq_print_age_or_dash(m, s & RQ_NET_SENT, now - req->pre_send_jif);
 seq_print_age_or_dash(m, (s & RQ_NET_SENT) && !(s & RQ_NET_PENDING), now - req->acked_jif);
 seq_print_age_or_dash(m, s & RQ_NET_DONE, now - req->net_done_jif);


 seq_print_request_state(m, req);
}
