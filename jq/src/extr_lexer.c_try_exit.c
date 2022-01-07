
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yyscan_t ;


 int INVALID_CHARACTER ;




 int QQSTRING_INTERP_END ;
 int assert (char) ;
 int yy_pop_state (int ) ;

__attribute__((used)) static int try_exit(int c, int state, yyscan_t yyscanner) {
  char match = 0;
  int ret;
  switch (state) {
  case 129: match = ret = ')'; break;
  case 130: match = ret = ']'; break;
  case 131: match = ret = '}'; break;

  case 128:
    match = ')';
    ret = QQSTRING_INTERP_END;
    break;

  default:

    return INVALID_CHARACTER;
  }
  assert(match);
  if (match == c) {
    yy_pop_state(yyscanner);
    return ret;
  } else {

    return INVALID_CHARACTER;
  }
}
