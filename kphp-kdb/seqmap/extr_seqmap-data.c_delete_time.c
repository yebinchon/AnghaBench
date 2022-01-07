
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct item {TYPE_1__* prev_time; TYPE_1__* next_time; } ;
struct TYPE_2__ {struct TYPE_2__* next_time; struct TYPE_2__* prev_time; } ;


 int assert (TYPE_1__*) ;

void delete_time (struct item *I) {
  if (!I->next_time) { return; }
  assert (I->prev_time);
  I->next_time->prev_time = I->prev_time;
  I->prev_time->next_time = I->next_time;
  I->next_time = I->prev_time = 0;
}
