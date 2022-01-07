
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_msg {int raw; } ;


 int assert (struct udp_msg*) ;
 int rwm_free (int *) ;
 int zfree (struct udp_msg*,int) ;

void udp_msg_free (struct udp_msg *msg) {
  assert (msg);
  rwm_free (&msg->raw);
  zfree (msg, sizeof (*msg));
}
