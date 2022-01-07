
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* type; scalar_t__ items; int array; } ;
typedef TYPE_2__ Vector ;
struct TYPE_5__ {int compare; } ;


 int Vector_isConsistent (TYPE_2__*) ;
 int assert (int ) ;
 int insertionSort (int ,int ,scalar_t__,int ) ;

void Vector_insertionSort(Vector* this) {
   assert(this->type->compare);
   assert(Vector_isConsistent(this));
   insertionSort(this->array, 0, this->items - 1, this->type->compare);
   assert(Vector_isConsistent(this));
}
