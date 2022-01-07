
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_message {void* next; int raw; } ;


 int free (struct udp_message*) ;
 int rwm_free (int *) ;

int free_udp_message (struct udp_message *msg) {
  int res = rwm_free (&msg->raw);
  msg->next = (void *) -1;
  free (msg);
  return res;
}
