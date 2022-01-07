
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int items; scalar_t__* array; scalar_t__ owner; } ;
typedef TYPE_1__ Vector ;


 int Object_delete (scalar_t__) ;
 int Vector_isConsistent (TYPE_1__*) ;
 int assert (int ) ;

void Vector_prune(Vector* this) {
   assert(Vector_isConsistent(this));
   if (this->owner) {
      for (int i = 0; i < this->items; i++)
         if (this->array[i]) {
            Object_delete(this->array[i]);

         }
   }
   this->items = 0;
}
