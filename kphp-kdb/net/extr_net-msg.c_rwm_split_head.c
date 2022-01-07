
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 int rwm_split (struct raw_message*,struct raw_message*,int) ;

int rwm_split_head (struct raw_message *head, struct raw_message *raw, int bytes) {
  *head = *raw;
  return rwm_split (head, raw, bytes);
}
