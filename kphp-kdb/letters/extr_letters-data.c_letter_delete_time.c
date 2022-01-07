
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time_sent; int priority; struct TYPE_2__* next; int id; } ;


 int add_letter_priority (int ,int ,int ,char const*) ;
 int expired_letters ;
 TYPE_1__ head_letter ;
 int now ;
 int process_delayed_letters (int,int) ;

void letter_delete_time (int gap, const char *error) {
  while (head_letter.next != &head_letter && head_letter.next->time_sent <= now - gap) {
    add_letter_priority (head_letter.next->id, head_letter.next->priority, 0, error);
    expired_letters++;
  }

  if (gap < 0) {
    process_delayed_letters (1, 1);
  }
}
