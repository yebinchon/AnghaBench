
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {scalar_t__ magic; scalar_t__ total_bytes; scalar_t__ last_offset; scalar_t__ first_offset; scalar_t__ last; scalar_t__ first; } ;


 scalar_t__ RM_INIT_MAGIC ;
 scalar_t__ RM_TMP_MAGIC ;
 int assert (int) ;

void rwm_clean (struct raw_message *raw) {
  assert (raw->magic == RM_INIT_MAGIC || raw->magic == RM_TMP_MAGIC);
  raw->first = raw->last = 0;
  raw->first_offset = raw->last_offset = 0;
  raw->total_bytes = 0;
}
