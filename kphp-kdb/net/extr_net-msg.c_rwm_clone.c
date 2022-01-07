
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw_message {scalar_t__ magic; TYPE_1__* first; } ;
struct TYPE_2__ {int refcnt; } ;


 scalar_t__ RM_INIT_MAGIC ;
 scalar_t__ RM_TMP_MAGIC ;
 int assert (int) ;
 int memcpy (struct raw_message*,struct raw_message*,int) ;
 int rwm_total_msgs ;

void rwm_clone (struct raw_message *dest_raw, struct raw_message *src_raw) {
  assert (src_raw->magic == RM_INIT_MAGIC || src_raw->magic == RM_TMP_MAGIC);
  memcpy (dest_raw, src_raw, sizeof (struct raw_message));
  if (src_raw->magic == RM_INIT_MAGIC && src_raw->first) {
    src_raw->first->refcnt++;
  }
  rwm_total_msgs ++;
}
