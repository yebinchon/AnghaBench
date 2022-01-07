
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* str; struct TYPE_4__* link; } ;
typedef TYPE_1__* List ;


 int append (int ,int ) ;
 int * com ;
 int concat (char*,char*) ;
 char* getenv (char*) ;
 int ilist ;
 char* inputs ;
 TYPE_1__* lccinputs ;
 int * llist ;
 TYPE_1__* path2list (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static void initinputs(void) {
 char *s = getenv("LCCINPUTS");
 List b;

 if (s == 0 || (s = inputs)[0] == 0)
  s = ".";
 if (s) {
  lccinputs = path2list(s);
  if ((b = lccinputs))
   do {
    b = b->link;
    if (strcmp(b->str, ".") != 0) {
     ilist = append(concat("-I", b->str), ilist);
     if (strstr(com[1], "win32") == ((void*)0))
      llist[0] = append(concat("-L", b->str), llist[0]);
    } else
     b->str = "";
   } while (b != lccinputs);
 }
}
