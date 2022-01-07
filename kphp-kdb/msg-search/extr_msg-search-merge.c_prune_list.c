
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos_to; int neg_to; int* delmsg_list; int delmsg_cnt; } ;


 int* D ;
 int Dc ;
 TYPE_1__* UserMod ;
 int dropped_pairs ;

__attribute__((used)) static void prune_list (int *start, int *stop, int pos_thr, int neg_thr) {
  int *A, *B;
  int pos_to, neg_to, msg_id;

  if (UserMod) {
    pos_to = UserMod->pos_to;
    neg_to = UserMod->neg_to;
    A = UserMod->delmsg_list;
    if (A) {
      B = A + UserMod->delmsg_cnt - 1;
    } else {
      B = 0;
      A = B + 1;
    }
  } else {
    pos_to = neg_to = 0;
    B = 0;
    A = B + 1;
  }

  while (start < stop) {
    msg_id = *start++;
    if (msg_id > 0) {
      while (A <= B && *B > msg_id) { B--; }
      if ((A <= B && msg_id == *B) || msg_id <= pos_to || msg_id >= pos_thr) {
 dropped_pairs++;
      } else {
 D[Dc++] = msg_id;
      }
    } else {
      while (A <= B && *A < msg_id) { A++; }
      if ((A <= B && msg_id == *A) || msg_id >= neg_to || msg_id <= neg_thr) {
 dropped_pairs++;
      } else {
 D[Dc++] = msg_id;
      }
    }
  }
}
