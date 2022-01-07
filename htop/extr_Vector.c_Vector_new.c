
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int growthRate; int arraySize; int owner; int * type; scalar_t__ items; int ** array; } ;
typedef TYPE_1__ Vector ;
typedef int ObjectClass ;
typedef int Object ;


 int DEFAULT_SIZE ;
 scalar_t__ xCalloc (int,int) ;
 TYPE_1__* xMalloc (int) ;

Vector* Vector_new(ObjectClass* type, bool owner, int size) {
   Vector* this;

   if (size == DEFAULT_SIZE)
      size = 10;
   this = xMalloc(sizeof(Vector));
   this->growthRate = size;
   this->array = (Object**) xCalloc(size, sizeof(Object*));
   this->arraySize = size;
   this->items = 0;
   this->type = type;
   this->owner = owner;
   return this;
}
