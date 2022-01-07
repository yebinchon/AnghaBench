
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int magic; } ;


 int RM_INIT_MAGIC ;
 int memset (struct raw_message*,int ,int) ;
 int rwm_push_data (struct raw_message*,void*,int) ;
 int rwm_total_msgs ;

int rwm_create (struct raw_message *raw, void *data, int alloc_bytes) {
  rwm_total_msgs ++;
  memset (raw, 0, sizeof (*raw));
  raw->magic = RM_INIT_MAGIC;
  return rwm_push_data (raw, data, alloc_bytes);
}
