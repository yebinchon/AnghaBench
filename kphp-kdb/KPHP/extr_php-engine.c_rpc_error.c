
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int Out; } ;
struct TYPE_5__ {long long req_id; struct connection* conn; } ;
typedef TYPE_1__ php_worker ;
struct TYPE_7__ {int out_packet_num; } ;
struct TYPE_6__ {int (* flush_packet ) (struct connection*) ;} ;


 TYPE_4__* RPCS_DATA (struct connection*) ;
 TYPE_3__* RPCS_FUNC (struct connection*) ;
 int RPC_REQ_ERROR ;
 int assert (int) ;
 scalar_t__ compute_crc32 (int*,int) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (struct connection*) ;
 int write_out (int *,int*,int) ;

void rpc_error (php_worker *worker, int code, const char *str) {
  struct connection *c = worker->conn;

  static int q[10000];
  q[1] = RPCS_DATA(c)->out_packet_num++;
  q[2] = RPC_REQ_ERROR;
  *(long long *)(q + 3) = worker->req_id;
  q[5] = code;


  char *buf = (char *)(q + 6);
  int all_len = 0;
  int sn = (int)strlen (str);

  if (sn > 5000) {
    sn = 5000;
  }

  if (sn < 254) {
    *buf++ = (char) (sn);
    all_len += 1;
  } else if (sn < (1 << 24)) {
    *buf++ = (char) (254);
    *buf++ = (char) (sn & 255);
    *buf++ = (char) ((sn >> 8) & 255);
    *buf++ = (char) ((sn >> 16) & 255);
    all_len += 4;
  } else {
    assert ("TODO: store too big string" && 0);
  }

  memcpy (buf, str, (size_t)sn);
  buf += sn;
  all_len += sn;
  while (all_len % 4 != 0) {
    *buf++ = 0;
    all_len++;
  }

  int qn = 7 + all_len / 4;
  q[0] = qn * 4;
  q[qn - 1] = (int)compute_crc32 (q, q[0] - 4);

  assert (write_out (&c->Out, q, q[0]) == q[0]);

  RPCS_FUNC(c)->flush_packet (c);
}
