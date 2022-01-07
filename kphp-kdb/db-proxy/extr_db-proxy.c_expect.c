
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_lex ;
 int sprintf (char*,char*,int) ;
 int syntax (char*) ;

__attribute__((used)) static int expect (int lexem) {
  if (cfg_lex != lexem) {
    static char buff[32];
    sprintf (buff, "%c expected", lexem);
    return syntax (buff);
  }
  return 0;
}
