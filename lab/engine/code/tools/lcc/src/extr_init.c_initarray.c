
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_4__ {scalar_t__ size; } ;


 char gettok () ;
 int initializer (TYPE_1__*,int) ;
 char t ;

__attribute__((used)) static int initarray(int len, Type ty, int lev) {
 int n = 0;

 do {
  initializer(ty, lev);
  n += ty->size;
  if ((len > 0 && n >= len) || t != ',')
   break;
  t = gettok();
 } while (t != '}');
 return n;
}
