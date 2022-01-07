
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int Out; } ;
struct TYPE_4__ {int out_packet_num; } ;
struct TYPE_3__ {int (* flush_packet ) (struct connection*) ;} ;


 int * CS ;
 int CSN ;
 TYPE_2__* RPCC_DATA (struct connection*) ;
 TYPE_1__* RPCC_FUNC (struct connection*) ;
 int STAT (int ) ;
 int assert (int) ;
 int compute_crc32 (int*,int) ;
 int dl_abs (int) ;
 struct connection* get_target_connection (int ) ;
 int rpc_failed ;
 int rpc_sent ;
 int rpc_sent_size ;
 int stub1 (struct connection*) ;
 int write_out (int *,int*,int) ;

int send_to_news_rpc (int addr, int *q) {


  addr = dl_abs (addr) % CSN;
  struct connection *c = get_target_connection (CS[addr]);



  if (c == ((void*)0)) {
    STAT (rpc_failed);
    return 0;
  }
  STAT (rpc_sent);

  int n = q[0];
  assert (n >= 4);
  q[0] *= sizeof (int);
  q[1] = RPCC_DATA(c)->out_packet_num++;
  q[n - 1] = compute_crc32 (q, q[0] - sizeof (int));

  assert (write_out (&c->Out, q, q[0]) == q[0]);

  rpc_sent_size += q[0];


  RPCC_FUNC(c)->flush_packet(c);
  return 0;
}
