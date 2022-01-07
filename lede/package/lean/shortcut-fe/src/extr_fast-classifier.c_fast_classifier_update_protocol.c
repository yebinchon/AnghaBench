
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sfe_connection_create {int protocol; int dest_port; int dest_ip; int src_port; int src_ip; int flags; int dest_td_max_end; int dest_td_end; int dest_td_max_window; int dest_td_window_scale; int src_td_max_end; int src_td_end; int src_td_max_window; int src_td_window_scale; } ;
struct TYPE_5__ {int state; TYPE_1__* seen; } ;
struct TYPE_6__ {TYPE_2__ tcp; } ;
struct nf_conn {int lock; TYPE_3__ proto; } ;
struct TYPE_4__ {int flags; int td_maxend; int td_end; int td_maxwin; int td_scale; } ;


 int DEBUG_TRACE (char*,int,...) ;
 int FAST_CL_EXCEPTION_TCP_NOT_ESTABLISHED ;
 int FAST_CL_EXCEPTION_UNKNOW_PROTOCOL ;


 int IP_CT_TCP_FLAG_BE_LIBERAL ;
 int SFE_CREATE_FLAG_NO_SEQ_CHECK ;
 int TCP_CONNTRACK_ESTABLISHED ;
 int fast_classifier_incr_exceptions (int ) ;
 int nf_ct_tcp_no_window_check ;
 int ntohs (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fast_classifier_update_protocol(struct sfe_connection_create *p_sic, struct nf_conn *ct)
{
 switch (p_sic->protocol) {
 case 129:
  p_sic->src_td_window_scale = ct->proto.tcp.seen[0].td_scale;
  p_sic->src_td_max_window = ct->proto.tcp.seen[0].td_maxwin;
  p_sic->src_td_end = ct->proto.tcp.seen[0].td_end;
  p_sic->src_td_max_end = ct->proto.tcp.seen[0].td_maxend;
  p_sic->dest_td_window_scale = ct->proto.tcp.seen[1].td_scale;
  p_sic->dest_td_max_window = ct->proto.tcp.seen[1].td_maxwin;
  p_sic->dest_td_end = ct->proto.tcp.seen[1].td_end;
  p_sic->dest_td_max_end = ct->proto.tcp.seen[1].td_maxend;

  if (nf_ct_tcp_no_window_check
      || (ct->proto.tcp.seen[0].flags & IP_CT_TCP_FLAG_BE_LIBERAL)
      || (ct->proto.tcp.seen[1].flags & IP_CT_TCP_FLAG_BE_LIBERAL)) {
   p_sic->flags |= SFE_CREATE_FLAG_NO_SEQ_CHECK;
  }






  spin_lock_bh(&ct->lock);
  if (ct->proto.tcp.state != TCP_CONNTRACK_ESTABLISHED) {
   spin_unlock_bh(&ct->lock);
   fast_classifier_incr_exceptions(FAST_CL_EXCEPTION_TCP_NOT_ESTABLISHED);
   DEBUG_TRACE("connection in termination state: %#x, s: %pI4:%u, d: %pI4:%u\n",
        ct->proto.tcp.state, &p_sic->src_ip, ntohs(p_sic->src_port),
        &p_sic->dest_ip, ntohs(p_sic->dest_port));
   return 0;
  }
  spin_unlock_bh(&ct->lock);
  break;

 case 128:
  break;

 default:
  fast_classifier_incr_exceptions(FAST_CL_EXCEPTION_UNKNOW_PROTOCOL);
  DEBUG_TRACE("unhandled protocol %d\n", p_sic->protocol);
  return 0;
 }

 return 1;
}
