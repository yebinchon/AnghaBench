
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int processes; } ;
typedef TYPE_1__ ProcessList ;


 int Vector_size (int ) ;

int ProcessList_size(ProcessList* this) {
   return (Vector_size(this->processes));
}
