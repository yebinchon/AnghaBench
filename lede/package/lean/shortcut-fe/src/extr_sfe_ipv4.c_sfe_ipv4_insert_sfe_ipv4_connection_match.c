
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv4_connection_match {struct sfe_ipv4_connection_match* next; struct sfe_ipv4_connection_match* prev; int match_dest_port; int match_dest_ip; int match_src_port; int match_src_ip; int match_protocol; int match_dev; } ;
struct sfe_ipv4 {struct sfe_ipv4_connection_match** conn_match_hash; } ;


 unsigned int sfe_ipv4_get_connection_match_hash (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void sfe_ipv4_insert_sfe_ipv4_connection_match(struct sfe_ipv4 *si,
            struct sfe_ipv4_connection_match *cm)
{
 struct sfe_ipv4_connection_match **hash_head;
 struct sfe_ipv4_connection_match *prev_head;
 unsigned int conn_match_idx
  = sfe_ipv4_get_connection_match_hash(cm->match_dev, cm->match_protocol,
           cm->match_src_ip, cm->match_src_port,
           cm->match_dest_ip, cm->match_dest_port);

 hash_head = &si->conn_match_hash[conn_match_idx];
 prev_head = *hash_head;
 cm->prev = ((void*)0);
 if (prev_head) {
  prev_head->prev = cm;
 }

 cm->next = prev_head;
 *hash_head = cm;
}
