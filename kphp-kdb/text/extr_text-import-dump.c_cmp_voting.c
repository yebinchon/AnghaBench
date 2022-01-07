
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ owner_id; scalar_t__ topic_id; scalar_t__ voting_id; } ;
typedef TYPE_1__ voting_t ;



__attribute__((used)) static inline int cmp_voting (voting_t *x, voting_t *y) {
  if (x->owner_id < y->owner_id) {
    return -1;
  } else if (x->owner_id > y->owner_id) {
    return 1;
  } else if (x->topic_id < y->topic_id) {
    return -1;
  } else if (x->topic_id > y->topic_id) {
    return 1;
  } else if (x->voting_id < y->voting_id) {
    return -1;
  } else if (x->voting_id > y->voting_id) {
    return 1;
  } else {
    return 0;
  }
}
