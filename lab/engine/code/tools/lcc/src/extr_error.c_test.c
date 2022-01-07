
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int) ;
 int gettok () ;
 int skipto (int,char*) ;
 int t ;

void test(int tok, char set[]) {
 if (t == tok)
  t = gettok();
 else {
  expect(tok);
  skipto(tok, set);
  if (t == tok)
   t = gettok();
 }
}
