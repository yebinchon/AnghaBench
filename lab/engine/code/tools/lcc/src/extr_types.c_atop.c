
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_7__ {struct TYPE_7__* type; } ;


 int error (char*,char*) ;
 scalar_t__ isarray (TYPE_1__*) ;
 TYPE_1__* ptr (TYPE_1__*) ;

Type atop(Type ty) {
 if (isarray(ty))
  return ptr(ty->type);
 error("type error: %s\n", "array expected");
 return ptr(ty);
}
