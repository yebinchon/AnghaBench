
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_7__ {int op; int size; } ;





 TYPE_1__* inttype ;
 TYPE_1__* unsignedptr ;
 TYPE_1__* unsignedtype ;

__attribute__((used)) static Type super(Type ty) {
 switch (ty->op) {
 case 130:
  if (ty->size < inttype->size)
   return inttype;
  break;
 case 128:
  if (ty->size < unsignedtype->size)
   return unsignedtype;
  break;
 case 129:
  return unsignedptr;
 }
 return ty;
}
