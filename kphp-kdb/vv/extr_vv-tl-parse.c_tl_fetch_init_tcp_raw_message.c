
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 int __tl_fetch_init (struct raw_message*,int ,int ,int *,int) ;
 int rwm_clean (struct raw_message*) ;
 int rwm_total_msgs ;
 int tl_in_raw_msg_methods ;
 int tl_type_tcp_raw_msg ;
 scalar_t__ zmalloc (int) ;

int tl_fetch_init_tcp_raw_message (struct raw_message *msg, int size) {
  struct raw_message *r = (struct raw_message *)zmalloc (sizeof (*r));
  *r = *msg;
  rwm_total_msgs ++;
  rwm_clean (msg);
  return __tl_fetch_init (r, 0, tl_type_tcp_raw_msg, &tl_in_raw_msg_methods, size);
}
