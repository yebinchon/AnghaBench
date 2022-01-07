
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double percent_label_buff; double percent_record_buff; double percent_nodes; double percent_edges; } ;
typedef TYPE_1__ dns_stat_t ;


 double DNS_LABELS_BUFFSIZE ;
 double DNS_MAX_TRIE_EDGES ;
 double DNS_MAX_TRIE_NODES ;
 double DNS_RECORDS_BUFFSIZE ;
 double labels_saved_bytes ;
 double labels_wptr ;
 double records_wptr ;
 double trie_edges ;
 double trie_nodes ;

void dns_stats (dns_stat_t *S) {
  S->percent_label_buff = (labels_wptr * 100.0) / DNS_LABELS_BUFFSIZE;
  S->percent_label_buff = (labels_saved_bytes * 100.0) / DNS_LABELS_BUFFSIZE;
  S->percent_record_buff = (records_wptr * 100.0) / DNS_RECORDS_BUFFSIZE;
  S->percent_nodes = (trie_nodes * 100.0) / DNS_MAX_TRIE_NODES;
  S->percent_edges = (trie_edges * 100.0) / DNS_MAX_TRIE_EDGES;
}
