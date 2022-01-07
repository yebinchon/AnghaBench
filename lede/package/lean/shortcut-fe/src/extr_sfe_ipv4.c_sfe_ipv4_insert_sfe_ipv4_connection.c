
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv4_connection {int reply_match; int original_match; struct sfe_ipv4_connection* all_connections_next; struct sfe_ipv4_connection* all_connections_prev; struct sfe_ipv4_connection* next; struct sfe_ipv4_connection* prev; int dest_port; int dest_ip; int src_port; int src_ip; int protocol; } ;
struct sfe_ipv4 {int num_connections; struct sfe_ipv4_connection* all_connections_tail; struct sfe_ipv4_connection* all_connections_head; struct sfe_ipv4_connection** conn_hash; } ;


 unsigned int sfe_ipv4_get_connection_hash (int ,int ,int ,int ,int ) ;
 int sfe_ipv4_insert_sfe_ipv4_connection_match (struct sfe_ipv4*,int ) ;

__attribute__((used)) static void sfe_ipv4_insert_sfe_ipv4_connection(struct sfe_ipv4 *si, struct sfe_ipv4_connection *c)
{
 struct sfe_ipv4_connection **hash_head;
 struct sfe_ipv4_connection *prev_head;
 unsigned int conn_idx;




 conn_idx = sfe_ipv4_get_connection_hash(c->protocol, c->src_ip, c->src_port,
      c->dest_ip, c->dest_port);
 hash_head = &si->conn_hash[conn_idx];
 prev_head = *hash_head;
 c->prev = ((void*)0);
 if (prev_head) {
  prev_head->prev = c;
 }

 c->next = prev_head;
 *hash_head = c;




 if (si->all_connections_tail) {
  c->all_connections_prev = si->all_connections_tail;
  si->all_connections_tail->all_connections_next = c;
 } else {
  c->all_connections_prev = ((void*)0);
  si->all_connections_head = c;
 }

 si->all_connections_tail = c;
 c->all_connections_next = ((void*)0);
 si->num_connections++;




 sfe_ipv4_insert_sfe_ipv4_connection_match(si, c->original_match);
 sfe_ipv4_insert_sfe_ipv4_connection_match(si, c->reply_match);
}
