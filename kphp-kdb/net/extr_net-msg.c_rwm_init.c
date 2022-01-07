
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 int rwm_create (struct raw_message*,int ,int) ;

int rwm_init (struct raw_message *raw, int alloc_bytes) {
  return rwm_create (raw, 0, alloc_bytes);
}
