
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_part {scalar_t__ refcnt; struct msg_part* next; TYPE_1__* part; } ;
struct TYPE_2__ {int refcnt; } ;


 int assert (int) ;
 int free_msg_buffer (TYPE_1__*) ;
 int free_msg_part (struct msg_part*) ;

__attribute__((used)) static int msg_part_decref (struct msg_part *mp) {
  struct msg_part *mpn;
  int cnt = 0;
  while (mp) {
    if (--mp->refcnt) {
      assert (mp->refcnt > 0);
      break;
    }
    int buffer_refcnt = --mp->part->refcnt;
    if (!buffer_refcnt) {
      free_msg_buffer (mp->part);
      cnt++;
    } else {
      assert (buffer_refcnt > 0);
    }
    mpn = mp->next;
    mp->part = 0;
    mp->next = 0;
    free_msg_part (mp);
    mp = mpn;
  }
  return cnt;
}
