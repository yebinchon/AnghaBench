
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char gettok () ;
 char t ;
 int test (char,char*) ;

__attribute__((used)) static void initend(int lev, char follow[]) {
 if (lev == 0 && t == ',')
  t = gettok();
 test('}', follow);
}
