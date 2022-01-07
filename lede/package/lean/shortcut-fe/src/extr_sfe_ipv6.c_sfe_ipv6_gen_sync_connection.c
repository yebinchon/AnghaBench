
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_11__ {int max_end; int end; int max_win; } ;
struct TYPE_12__ {TYPE_5__ tcp; } ;
struct sfe_ipv6_connection_match {int rx_byte_count64; int rx_packet_count64; int match_dev; int rx_byte_count; int rx_packet_count; TYPE_6__ protocol_state; } ;
struct sfe_ipv6_connection {void* last_sync_jiffies; struct sfe_ipv6_connection_match* reply_match; struct sfe_ipv6_connection_match* original_match; int dest_port_xlate; int dest_port; int src_port_xlate; int src_port; int * dest_ip_xlate; int * dest_ip; int * src_ip_xlate; int * src_ip; int protocol; } ;
struct sfe_ipv6 {int dummy; } ;
struct TYPE_10__ {int * ip6; } ;
struct TYPE_9__ {int * ip6; } ;
struct TYPE_8__ {int * ip6; } ;
struct TYPE_7__ {int * ip6; } ;
struct sfe_connection_sync {int is_v6; void* delta_jiffies; int reason; int dest_byte_count; int dest_packet_count; int dest_dev; int src_byte_count; int src_packet_count; int src_dev; int dest_new_byte_count; int dest_new_packet_count; int src_new_byte_count; int src_new_packet_count; int dest_td_max_end; int dest_td_end; int dest_td_max_window; int src_td_max_end; int src_td_end; int src_td_max_window; int dest_port_xlate; int dest_port; int src_port_xlate; int src_port; TYPE_4__ dest_ip_xlate; TYPE_3__ dest_ip; TYPE_2__ src_ip_xlate; TYPE_1__ src_ip; int protocol; } ;
typedef int sfe_sync_reason_t ;


 int sfe_ipv6_connection_match_update_summary_stats (struct sfe_ipv6_connection_match*) ;

__attribute__((used)) static void sfe_ipv6_gen_sync_connection(struct sfe_ipv6 *si, struct sfe_ipv6_connection *c,
     struct sfe_connection_sync *sis, sfe_sync_reason_t reason,
     u64 now_jiffies)
{
 struct sfe_ipv6_connection_match *original_cm;
 struct sfe_ipv6_connection_match *reply_cm;




 sis->is_v6 = 1;
 sis->protocol = c->protocol;
 sis->src_ip.ip6[0] = c->src_ip[0];
 sis->src_ip_xlate.ip6[0] = c->src_ip_xlate[0];
 sis->dest_ip.ip6[0] = c->dest_ip[0];
 sis->dest_ip_xlate.ip6[0] = c->dest_ip_xlate[0];
 sis->src_port = c->src_port;
 sis->src_port_xlate = c->src_port_xlate;
 sis->dest_port = c->dest_port;
 sis->dest_port_xlate = c->dest_port_xlate;

 original_cm = c->original_match;
 reply_cm = c->reply_match;
 sis->src_td_max_window = original_cm->protocol_state.tcp.max_win;
 sis->src_td_end = original_cm->protocol_state.tcp.end;
 sis->src_td_max_end = original_cm->protocol_state.tcp.max_end;
 sis->dest_td_max_window = reply_cm->protocol_state.tcp.max_win;
 sis->dest_td_end = reply_cm->protocol_state.tcp.end;
 sis->dest_td_max_end = reply_cm->protocol_state.tcp.max_end;

 sis->src_new_packet_count = original_cm->rx_packet_count;
 sis->src_new_byte_count = original_cm->rx_byte_count;
 sis->dest_new_packet_count = reply_cm->rx_packet_count;
 sis->dest_new_byte_count = reply_cm->rx_byte_count;

 sfe_ipv6_connection_match_update_summary_stats(original_cm);
 sfe_ipv6_connection_match_update_summary_stats(reply_cm);

 sis->src_dev = original_cm->match_dev;
 sis->src_packet_count = original_cm->rx_packet_count64;
 sis->src_byte_count = original_cm->rx_byte_count64;

 sis->dest_dev = reply_cm->match_dev;
 sis->dest_packet_count = reply_cm->rx_packet_count64;
 sis->dest_byte_count = reply_cm->rx_byte_count64;

 sis->reason = reason;




 sis->delta_jiffies = now_jiffies - c->last_sync_jiffies;
 c->last_sync_jiffies = now_jiffies;
}
