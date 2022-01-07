
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int items; int ** array; scalar_t__ owner; int type; } ;
typedef TYPE_1__ Vector ;
typedef int Object ;


 int Object_delete (int *) ;
 int Object_isA (int *,int ) ;
 int Vector_checkArraySize (TYPE_1__*) ;
 int Vector_isConsistent (TYPE_1__*) ;
 int assert (int) ;

void Vector_set(Vector* this, int idx, void* data_) {
   Object* data = data_;
   assert(idx >= 0);
   assert(Object_isA((Object*)data, this->type));
   assert(Vector_isConsistent(this));

   Vector_checkArraySize(this);
   if (idx >= this->items) {
      this->items = idx+1;
   } else {
      if (this->owner) {
         Object* removed = this->array[idx];
         assert (removed != ((void*)0));
         if (this->owner) {
            Object_delete(removed);
         }
      }
   }
   this->array[idx] = data;
   assert(Vector_isConsistent(this));
}
