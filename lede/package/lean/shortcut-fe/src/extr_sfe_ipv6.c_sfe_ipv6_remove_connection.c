
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sfe_ipv6_connection {TYPE_4__* all_connections_prev; TYPE_3__* all_connections_next; TYPE_2__* prev; TYPE_1__* next; int dest_port; int dest_ip; int src_port; int src_ip; int protocol; int original_match; int reply_match; } ;
struct sfe_ipv6 {int num_connections; TYPE_4__* all_connections_tail; TYPE_3__* all_connections_head; TYPE_1__** conn_hash; } ;
struct TYPE_8__ {TYPE_3__* all_connections_next; } ;
struct TYPE_7__ {TYPE_4__* all_connections_prev; } ;
struct TYPE_6__ {TYPE_1__* next; } ;
struct TYPE_5__ {TYPE_2__* prev; } ;


 unsigned int sfe_ipv6_get_connection_hash (int ,int ,int ,int ,int ) ;
 int sfe_ipv6_remove_connection_match (struct sfe_ipv6*,int ) ;

__attribute__((used)) static void sfe_ipv6_remove_connection(struct sfe_ipv6 *si, struct sfe_ipv6_connection *c)
{



 sfe_ipv6_remove_connection_match(si, c->reply_match);
 sfe_ipv6_remove_connection_match(si, c->original_match);




 if (c->prev) {
  c->prev->next = c->next;
 } else {
  unsigned int conn_idx = sfe_ipv6_get_connection_hash(c->protocol, c->src_ip, c->src_port,
             c->dest_ip, c->dest_port);
  si->conn_hash[conn_idx] = c->next;
 }

 if (c->next) {
  c->next->prev = c->prev;
 }




 if (c->all_connections_prev) {
  c->all_connections_prev->all_connections_next = c->all_connections_next;
 } else {
  si->all_connections_head = c->all_connections_next;
 }

 if (c->all_connections_next) {
  c->all_connections_next->all_connections_prev = c->all_connections_prev;
 } else {
  si->all_connections_tail = c->all_connections_prev;
 }

 si->num_connections--;
}
