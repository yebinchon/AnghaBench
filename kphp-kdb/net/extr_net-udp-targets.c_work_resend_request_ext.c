
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_bytes; } ;
struct udp_msg {int S; TYPE_1__ raw; } ;


 int TL_UDP_RESEND_REQUEST_EXT ;
 int assert (int) ;
 int resend_range (int ,int,int,int) ;
 int rwm_fetch_data (TYPE_1__*,int*,int) ;
 int vkprintf (int,char*,int) ;

int work_resend_request_ext (struct udp_msg *msg) {
  vkprintf (2, "work_resend_request: len = %d\n", msg->raw.total_bytes);
  if (msg->raw.total_bytes > 102 * 4) { return 0; }
  int len = msg->raw.total_bytes;
  static int P[102];
  assert (rwm_fetch_data (&msg->raw, P, len) == len);
  if ((P[1] + 1) * 8 != len) { return 0; }
  assert (P[0] == TL_UDP_RESEND_REQUEST_EXT);
  int i;

  for (i = 0; i < P[1]; i++) {
    if (P[2 + 2 * i] <= P[2 + 2 * i + 1]) {
      resend_range (msg->S, P[2 + 2 * i], P[2 + 2 * i + 1], 1);
    }
  }
  return 0;
}
