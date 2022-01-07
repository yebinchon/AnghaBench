
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_part {int refcnt; scalar_t__ len; scalar_t__ offset; struct msg_buffer* part; scalar_t__ next; } ;
struct msg_buffer {int dummy; } ;


 struct msg_part* alloc_msg_part () ;
 int assert (struct msg_part*) ;
 int rwm_total_msg_parts ;

struct msg_part *new_msg_part (struct msg_part *neighbor, struct msg_buffer *X) {
  struct msg_part *mp = alloc_msg_part ();
  rwm_total_msg_parts ++;
  assert (mp);
  mp->refcnt = 1;
  mp->next = 0;
  mp->part = X;
  mp->offset = 0;
  mp->len = 0;
  return mp;
}
