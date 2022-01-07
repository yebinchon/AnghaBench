
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int items; int ** array; } ;
typedef TYPE_1__ Vector ;
typedef int Object ;


 int Vector_isConsistent (TYPE_1__*) ;
 int assert (int) ;

Object* Vector_take(Vector* this, int idx) {
   assert(idx >= 0 && idx < this->items);
   assert(Vector_isConsistent(this));
   Object* removed = this->array[idx];

   this->items--;
   for (int i = idx; i < this->items; i++)
      this->array[i] = this->array[i+1];

   assert(Vector_isConsistent(this));
   return removed;
}
