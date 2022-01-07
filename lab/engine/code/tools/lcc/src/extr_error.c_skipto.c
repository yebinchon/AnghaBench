
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOI ;
 int assert (char*) ;
 int error (char*) ;
 int fprint (int ,char*) ;
 int gettok () ;
 char* kind ;
 int printtoken () ;
 int stderr ;
 int t ;

void skipto(int tok, char set[]) {
 int n;
 char *s;

 assert(set);
 for (n = 0; t != EOI && t != tok; t = gettok()) {
  for (s = set; *s && kind[t] != *s; s++)
   ;
  if (kind[t] == *s)
   break;
  if (n++ == 0)
   error("skipping");
  if (n <= 8)
   printtoken();
  else if (n == 9)
   fprint(stderr, " ...");
 }
 if (n > 8) {
  fprint(stderr, " up to");
  printtoken();
 }
 if (n > 0)
  fprint(stderr, "\n");
}
