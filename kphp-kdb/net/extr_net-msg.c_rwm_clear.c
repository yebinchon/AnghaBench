
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {scalar_t__ magic; scalar_t__ first; } ;


 scalar_t__ RM_INIT_MAGIC ;
 scalar_t__ RM_TMP_MAGIC ;
 int assert (int) ;
 int msg_part_decref (scalar_t__) ;
 int rwm_clean (struct raw_message*) ;

void rwm_clear (struct raw_message *raw) {
  assert (raw->magic == RM_INIT_MAGIC || raw->magic == RM_TMP_MAGIC);
  if (raw->first) {
    msg_part_decref (raw->first);
  }
  rwm_clean (raw);
}
