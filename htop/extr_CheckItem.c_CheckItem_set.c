
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* ref; int value; } ;
typedef TYPE_1__ CheckItem ;



void CheckItem_set(CheckItem* this, bool value) {
   if (this->ref)
      *(this->ref) = value;
   else
      this->value = value;
}
