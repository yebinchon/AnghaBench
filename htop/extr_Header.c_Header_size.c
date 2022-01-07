
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {int ** columns; } ;
typedef TYPE_1__ Header ;


 int Vector_size (int *) ;

int Header_size(Header* this, int column) {
   Vector* meters = this->columns[column];
   return Vector_size(meters);
}
