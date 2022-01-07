
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ large_pos; scalar_t__ small_pos; scalar_t__ new_pos; } ;


 TYPE_1__ user_iterator ;

void init_user_iterator (void) {
  user_iterator.new_pos = 0;
  user_iterator.small_pos = 0;
  user_iterator.large_pos = 0;
}
