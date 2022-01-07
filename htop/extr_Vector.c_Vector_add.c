
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int items; int type; } ;
typedef TYPE_1__ Vector ;
typedef int Object ;


 int Object_isA (int *,int ) ;
 int Vector_isConsistent (TYPE_1__*) ;
 int Vector_set (TYPE_1__*,int,int *) ;
 int assert (int) ;

void Vector_add(Vector* this, void* data_) {
   Object* data = data_;
   assert(Object_isA((Object*)data, this->type));
   assert(Vector_isConsistent(this));
   int i = this->items;
   Vector_set(this, this->items, data);
   assert(this->items == i+1); (void)(i);
   assert(Vector_isConsistent(this));
}
