
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int fprint (int ,char*,int) ;
 int gettok () ;
 int printtoken () ;
 int stderr ;
 int t ;

void expect(int tok) {
 if (t == tok)
  t = gettok();
 else {
  error("syntax error; found");
  printtoken();
  fprint(stderr, " expecting `%k'\n", tok);
 }
}
