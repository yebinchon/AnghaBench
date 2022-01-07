
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_15__ {scalar_t__ size; } ;


 TYPE_1__* doubletype ;
 TYPE_1__* floattype ;
 TYPE_1__* inttype ;
 TYPE_1__* longdouble ;
 TYPE_1__* longlong ;
 TYPE_1__* longtype ;
 TYPE_1__* unsignedlong ;
 TYPE_1__* unsignedlonglong ;
 TYPE_1__* unsignedtype ;
 int xx (TYPE_1__*) ;

Type binary(Type xty, Type yty) {

 if (xty == longdouble || yty == longdouble) return longdouble;
 if (xty == doubletype || yty == doubletype) return doubletype;
 if (xty == floattype || yty == floattype) return floattype;
 if (xty == unsignedlonglong || yty == unsignedlonglong) return unsignedlonglong;
 if (xty == longlong || yty == longlong) return longlong;
 if (xty == unsignedlong || yty == unsignedlong) return unsignedlong;
 if ((xty == longtype && yty == unsignedtype)
 || (xty == unsignedtype && yty == longtype)) {
  if (longtype->size > unsignedtype->size)
   return longtype;
  else
   return unsignedlong;
 }
 if (xty == longtype || yty == longtype) return longtype;
 if (xty == unsignedtype || yty == unsignedtype) return unsignedtype;
 return inttype;

}
