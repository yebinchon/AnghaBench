
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int flush_later (struct connection*) ;
 int tcp_rpcc_flush_crypto (struct connection*) ;

int tcp_rpcc_flush_packet_later (struct connection *c) {
  tcp_rpcc_flush_crypto (c);
  return flush_later (c);
}
