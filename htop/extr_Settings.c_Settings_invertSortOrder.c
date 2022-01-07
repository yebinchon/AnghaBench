
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int direction; } ;
typedef TYPE_1__ Settings ;



void Settings_invertSortOrder(Settings* this) {
   if (this->direction == 1)
      this->direction = -1;
   else
      this->direction = 1;
}
