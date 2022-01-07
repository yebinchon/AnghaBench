
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int out; TYPE_1__* type; scalar_t__ crypto; } ;
struct TYPE_2__ {int (* crypto_needed_output_bytes ) (struct connection*) ;} ;


 int assert (int) ;
 int flush_connection_output (struct connection*) ;
 int rwm_push_data (int *,int*,int) ;
 int stub1 (struct connection*) ;
 int vkprintf (int,char*,int) ;

int tcp_rpcs_flush_packet (struct connection *c) {
  if (c->crypto) {
    int pad_bytes = c->type->crypto_needed_output_bytes (c);
    vkprintf (2, "tcp_rpcs_flush_packet: padding with %d bytes\n", pad_bytes);
    if (pad_bytes > 0) {
      assert (!(pad_bytes & 3));
      static int pad_str[3] = {4, 4, 4};
      assert (pad_bytes <= 12);
      assert (rwm_push_data (&c->out, pad_str, pad_bytes) == pad_bytes);
    }
  }
  return flush_connection_output (c);
}
