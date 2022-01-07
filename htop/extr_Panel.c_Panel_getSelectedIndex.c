
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int selected; } ;
typedef TYPE_1__ Panel ;


 int assert (int ) ;

int Panel_getSelectedIndex(Panel* this) {
   assert (this != ((void*)0));

   return this->selected;
}
