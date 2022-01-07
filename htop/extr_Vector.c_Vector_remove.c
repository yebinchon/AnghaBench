
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ owner; } ;
typedef TYPE_1__ Vector ;
typedef int Object ;


 int Object_delete (int *) ;
 int * Vector_take (TYPE_1__*,int) ;

Object* Vector_remove(Vector* this, int idx) {
   Object* removed = Vector_take(this, idx);
   if (this->owner) {
      Object_delete(removed);
      return ((void*)0);
   } else
      return removed;
}
