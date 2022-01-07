
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items; } ;
typedef TYPE_1__ Panel ;
typedef int Object ;


 int Vector_set (int ,int,int *) ;
 int assert (int ) ;

void Panel_set(Panel* this, int i, Object* o) {
   assert (this != ((void*)0));

   Vector_set(this->items, i, o);
}
