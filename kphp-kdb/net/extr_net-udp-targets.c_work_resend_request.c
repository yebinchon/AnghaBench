
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_bytes; } ;
struct udp_msg {int S; TYPE_1__ raw; } ;


 int TL_UDP_RESEND_REQUEST ;
 int assert (int) ;
 int resend_range (int ,int,int,int) ;
 int rwm_fetch_data (TYPE_1__*,int*,int) ;
 int vkprintf (int,char*,int) ;

int work_resend_request (struct udp_msg *msg) {
  vkprintf (2, "work_resend_request: len = %d\n", msg->raw.total_bytes);
  if (msg->raw.total_bytes != 12) { return 0; }
  int P[3];
  assert (rwm_fetch_data (&msg->raw, P, 12) == 12);
  assert (P[0] == TL_UDP_RESEND_REQUEST);

  if (P[1] > P[2]) { return 0; }
  resend_range (msg->S, P[1], P[2], 1);
  return 0;
}
