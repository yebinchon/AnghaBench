
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int local_id; } ;
typedef TYPE_1__ message_t ;



__attribute__((used)) static inline int message_cmp (message_t *a, message_t *b) {
  int x = a->local_id - b->local_id;
  if (x) {
    return x;
  }
  return (a < b ? -1 : (a > b ? 1 : 0));
}
