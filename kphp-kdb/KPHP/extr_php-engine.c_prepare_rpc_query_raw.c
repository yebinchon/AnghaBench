
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ compute_crc32 (int*,int) ;

void prepare_rpc_query_raw (int packet_id, int *q, int qn) {
  assert (sizeof (int) == 4);
  q[0] = qn;
  assert ((qn & 3) == 0);
  qn >>= 2;
  assert (qn >= 5);

  q[1] = packet_id;
  q[qn - 1] = (int)compute_crc32 (q, q[0] - 4);
}
