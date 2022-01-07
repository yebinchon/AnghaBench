
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int Aflag ;
 int dclr (int ,int *,int *,int) ;
 int hasproto (int ) ;
 int specifier (int *) ;
 char t ;
 int warning (char*) ;

Type typename(void) {
 Type ty = specifier(((void*)0));

 if (t == '*' || t == '(' || t == '[') {
  ty = dclr(ty, ((void*)0), ((void*)0), 1);
  if (Aflag >= 1 && !hasproto(ty))
   warning("missing prototype\n");
 }
 return ty;
}
