
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yyscan_t ;


 int IN_BRACE ;
 int IN_BRACKET ;
 int IN_PAREN ;
 int IN_QQINTERP ;

 int assert (int) ;
 int yy_push_state (int,int ) ;

__attribute__((used)) static int enter(int c, int currstate, yyscan_t yyscanner) {
  int state = 0;
  switch (c) {
  case '(': state = IN_PAREN; break;
  case '[': state = IN_BRACKET; break;
  case '{': state = IN_BRACE; break;
  case 128: state = IN_QQINTERP; break;
  }
  assert(state);
  yy_push_state(state, yyscanner);
  return c;
}
