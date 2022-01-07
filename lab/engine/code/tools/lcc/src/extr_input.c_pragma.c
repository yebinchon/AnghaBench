
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;


 int ID ;
 char* cp ;
 int gettok () ;
 int src ;
 scalar_t__ strcmp (int ,char*) ;
 int t ;
 int token ;
 TYPE_1__* tsym ;
 int use (TYPE_1__*,int ) ;

__attribute__((used)) static void pragma(void) {
 if ((t = gettok()) == ID && strcmp(token, "ref") == 0)
  for (;;) {
   while (*cp == ' ' || *cp == '\t')
    cp++;
   if (*cp == '\n' || *cp == 0)
    break;
   if ((t = gettok()) == ID && tsym) {
    tsym->ref++;
    use(tsym, src);
   }
  }
}
