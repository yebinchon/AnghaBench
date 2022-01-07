
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct relative {int type; struct relative* next; int timestamp; } ;
struct TYPE_2__ {struct relative* next; } ;


 TYPE_1__ RELATIVES ;
 int precise_now ;

void restart_friends_timers (void) {
  struct relative *cur = RELATIVES.next;
  while (cur->type != -1) {
    cur->timestamp = precise_now;
    cur = cur->next;
  }
}
