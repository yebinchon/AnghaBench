
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_fail_time; scalar_t__ sequential_fails; int fails; int success; } ;
typedef TYPE_1__ stat_read_t ;


 int now ;

void update_read_stat (stat_read_t *S, int success) {
  if (success) {
    S->success++;
    S->sequential_fails = 0;
  } else {
    S->fails++;
    S->sequential_fails++;
    S->last_fail_time = now;
  }
}
