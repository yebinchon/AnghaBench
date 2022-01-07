
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int items; int arraySize; int growthRate; int ** array; } ;
typedef TYPE_1__ Vector ;
typedef int Object ;


 int Vector_isConsistent (TYPE_1__*) ;
 int assert (int ) ;
 scalar_t__ xRealloc (int **,int) ;

__attribute__((used)) static void Vector_checkArraySize(Vector* this) {
   assert(Vector_isConsistent(this));
   if (this->items >= this->arraySize) {


      this->arraySize = this->items + this->growthRate;
      this->array = (Object**) xRealloc(this->array, sizeof(Object*) * this->arraySize);


   }
   assert(Vector_isConsistent(this));
}
