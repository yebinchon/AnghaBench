
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ ISPRINT (unsigned char) ;
 int mrb_str_cat (int *,int ,char*,int) ;

__attribute__((used)) static mrb_value
regexp_expr_str(mrb_state *mrb, mrb_value str, const char *p, int len) {
  const char *pend;
  char buf[5];

  pend = (const char *) p + len;
  for (;p < pend; p++) {
    unsigned char c, cc;

    c = *p;
    if (c == '/') {
      buf[0] = '\\'; buf[1] = c;
      mrb_str_cat(mrb, str, buf, 2);
      continue;
    }
    if (ISPRINT(c)) {
      buf[0] = c;
      mrb_str_cat(mrb, str, buf, 1);
      continue;
    }
    switch (c) {
      case '\n': cc = 'n'; break;
      case '\r': cc = 'r'; break;
      case '\t': cc = 't'; break;
      default: cc = 0; break;
    }
    if (cc) {
      buf[0] = '\\';
      buf[1] = (char)cc;
      mrb_str_cat(mrb, str, buf, 2);
      continue;
    }
    else {
      buf[0] = '\\';
      buf[3] = '0' + c % 8; c /= 8;
      buf[2] = '0' + c % 8; c /= 8;
      buf[1] = '0' + c % 8;
      mrb_str_cat(mrb, str, buf, 4);
      continue;
    }
  }
  return str;
}
