
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int date; } ;
typedef TYPE_1__ message_t ;



__attribute__((used)) static inline int message_cmp2 (message_t *a, message_t *b) {
  int x = a->date - b->date;
  if (x) {
    return x;
  }
  return (a < b ? -1 : (a > b ? 1 : 0));
}
