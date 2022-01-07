
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int flush_connection_output (struct connection*) ;

int rpcc_flush_packet (struct connection *c) {
  return flush_connection_output (c);
}
