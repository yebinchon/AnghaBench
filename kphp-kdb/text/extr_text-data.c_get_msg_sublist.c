
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_msg_sublist_ext (int,int,int,int ,int,int) ;

int get_msg_sublist (int user_id, int and_mask, int xor_mask, int from, int to) {
  return get_msg_sublist_ext (user_id, and_mask, xor_mask, 0, from, to);
}
