
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpl {char idx; int str; } ;
typedef int mrb_state ;
typedef char mrb_int ;


 int E_ARGUMENT_ERROR ;
 int E_RUNTIME_ERROR ;
 int PACK_DIR_BASE64 ;
 int PACK_DIR_CHAR ;
 int PACK_DIR_DOUBLE ;
 int PACK_DIR_FLOAT ;
 int PACK_DIR_HEX ;
 int PACK_DIR_INVALID ;
 int PACK_DIR_LONG ;
 int PACK_DIR_NUL ;
 int PACK_DIR_QUAD ;
 int PACK_DIR_SHORT ;
 int PACK_DIR_STR ;
 int PACK_DIR_UTF8 ;
 unsigned int PACK_FLAG_COUNT2 ;
 unsigned int PACK_FLAG_GT ;
 unsigned int PACK_FLAG_LITTLEENDIAN ;
 unsigned int PACK_FLAG_LSB ;
 unsigned int PACK_FLAG_LT ;
 unsigned int PACK_FLAG_SIGNED ;
 unsigned int PACK_FLAG_WIDTH ;
 unsigned int PACK_FLAG_Z ;
 unsigned int PACK_FLAG_a ;
 unsigned int PACK_FLAG_s ;
 int PACK_TYPE_FLOAT ;
 int PACK_TYPE_INTEGER ;
 int PACK_TYPE_NONE ;
 int PACK_TYPE_STRING ;
 char RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ littleendian ;
 int mrb_fixnum_value (int) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new (int *,char*,int) ;
 int * strchr (char*,int) ;

__attribute__((used)) static void
read_tmpl(mrb_state *mrb, struct tmpl *tmpl, int *dirp, int *typep, int *sizep, int *countp, unsigned int *flagsp)
{
  mrb_int t, tlen;
  int ch, dir, type, size = 0;
  int count = 1;
  unsigned int flags = 0;
  const char *tptr;

  tptr = RSTRING_PTR(tmpl->str);
  tlen = RSTRING_LEN(tmpl->str);

  t = tptr[tmpl->idx++];
alias:
  switch (t) {
  case 'A':
    dir = PACK_DIR_STR;
    type = PACK_TYPE_STRING;
    flags |= PACK_FLAG_WIDTH | PACK_FLAG_COUNT2;
    break;
  case 'a':
    dir = PACK_DIR_STR;
    type = PACK_TYPE_STRING;
    flags |= PACK_FLAG_WIDTH | PACK_FLAG_COUNT2 | PACK_FLAG_a;
    break;
  case 'C':
    dir = PACK_DIR_CHAR;
    type = PACK_TYPE_INTEGER;
    size = 1;
    break;
  case 'c':
    dir = PACK_DIR_CHAR;
    type = PACK_TYPE_INTEGER;
    size = 1;
    flags |= PACK_FLAG_SIGNED;
    break;
  case 'D': case 'd':
    dir = PACK_DIR_DOUBLE;
    type = PACK_TYPE_FLOAT;
    size = 8;
    flags |= PACK_FLAG_SIGNED;
    break;
  case 'F': case 'f':
    dir = PACK_DIR_FLOAT;
    type = PACK_TYPE_FLOAT;
    size = 4;
    flags |= PACK_FLAG_SIGNED;
    break;
  case 'E':
    dir = PACK_DIR_DOUBLE;
    type = PACK_TYPE_FLOAT;
    size = 8;
    flags |= PACK_FLAG_SIGNED | PACK_FLAG_LT;
    break;
  case 'e':
    dir = PACK_DIR_FLOAT;
    type = PACK_TYPE_FLOAT;
    size = 4;
    flags |= PACK_FLAG_SIGNED | PACK_FLAG_LT;
    break;
  case 'G':
    dir = PACK_DIR_DOUBLE;
    type = PACK_TYPE_FLOAT;
    size = 8;
    flags |= PACK_FLAG_SIGNED | PACK_FLAG_GT;
    break;
  case 'g':
    dir = PACK_DIR_FLOAT;
    type = PACK_TYPE_FLOAT;
    size = 4;
    flags |= PACK_FLAG_SIGNED | PACK_FLAG_GT;
    break;
  case 'H':
    dir = PACK_DIR_HEX;
    type = PACK_TYPE_STRING;
    flags |= PACK_FLAG_COUNT2;
    break;
  case 'h':
    dir = PACK_DIR_HEX;
    type = PACK_TYPE_STRING;
    flags |= PACK_FLAG_COUNT2 | PACK_FLAG_LSB;
    break;
  case 'I':
    switch (sizeof(int)) {
      case 2: t = 'S'; goto alias;
      case 4: t = 'L'; goto alias;
      case 8: t = 'Q'; goto alias;
      default:
        mrb_raisef(mrb, E_RUNTIME_ERROR, "mruby-pack does not support sizeof(int) == %S", mrb_fixnum_value(sizeof(int)));
    }
    break;
  case 'i':
    switch (sizeof(int)) {
      case 2: t = 's'; goto alias;
      case 4: t = 'l'; goto alias;
      case 8: t = 'q'; goto alias;
      default:
        mrb_raisef(mrb, E_RUNTIME_ERROR, "mruby-pack does not support sizeof(int) == %S", mrb_fixnum_value(sizeof(int)));
    }
    break;
  case 'L':
    dir = PACK_DIR_LONG;
    type = PACK_TYPE_INTEGER;
    size = 4;
    break;
  case 'l':
    dir = PACK_DIR_LONG;
    type = PACK_TYPE_INTEGER;
    size = 4;
    flags |= PACK_FLAG_SIGNED;
    break;
  case 'm':
    dir = PACK_DIR_BASE64;
    type = PACK_TYPE_STRING;
    flags |= PACK_FLAG_WIDTH;
    break;
  case 'N':
    dir = PACK_DIR_LONG;
    type = PACK_TYPE_INTEGER;
    size = 4;
    flags |= PACK_FLAG_GT;
    break;
  case 'n':
    dir = PACK_DIR_SHORT;
    type = PACK_TYPE_INTEGER;
    size = 2;
    flags |= PACK_FLAG_GT;
    break;
  case 'Q':
    dir = PACK_DIR_QUAD;
    type = PACK_TYPE_INTEGER;
    size = 8;
    break;
  case 'q':
    dir = PACK_DIR_QUAD;
    type = PACK_TYPE_INTEGER;
    size = 8;
    flags |= PACK_FLAG_SIGNED;
    break;
  case 'S':
    dir = PACK_DIR_SHORT;
    type = PACK_TYPE_INTEGER;
    size = 2;
    break;
  case 's':
    dir = PACK_DIR_SHORT;
    type = PACK_TYPE_INTEGER;
    size = 2;
    flags |= PACK_FLAG_SIGNED;
    break;
  case 'U':
    dir = PACK_DIR_UTF8;
    type = PACK_TYPE_INTEGER;
    break;
  case 'V':
    dir = PACK_DIR_LONG;
    type = PACK_TYPE_INTEGER;
    size = 4;
    flags |= PACK_FLAG_LT;
    break;
  case 'v':
    dir = PACK_DIR_SHORT;
    type = PACK_TYPE_INTEGER;
    size = 2;
    flags |= PACK_FLAG_LT;
    break;
  case 'x':
    dir = PACK_DIR_NUL;
    type = PACK_TYPE_NONE;
    break;
  case 'Z':
    dir = PACK_DIR_STR;
    type = PACK_TYPE_STRING;
    flags |= PACK_FLAG_WIDTH | PACK_FLAG_COUNT2 | PACK_FLAG_Z;
    break;
  default:
    dir = PACK_DIR_INVALID;
    type = PACK_TYPE_NONE;
    break;
  }


  while (tmpl->idx < tlen) {
    ch = tptr[tmpl->idx++];
    if (isdigit(ch)) {
      count = ch - '0';
      while (tmpl->idx < tlen && isdigit(tptr[tmpl->idx])) {
        count = count * 10 + (tptr[tmpl->idx++] - '0');
        if (count < 0) {
          mrb_raise(mrb, E_RUNTIME_ERROR, "too big template length");
        }
      }
      continue;
    } else if (ch == '*') {
      count = -1;
    } else if (ch == '_' || ch == '!' || ch == '<' || ch == '>') {
      if (strchr("sSiIlLqQ", (int)t) == ((void*)0)) {
        char ch_str = (char)ch;
        mrb_raisef(mrb, E_ARGUMENT_ERROR, "'%S' allowed only after types sSiIlLqQ", mrb_str_new(mrb, &ch_str, 1));
      }
      if (ch == '_' || ch == '!') {
        flags |= PACK_FLAG_s;
      } else if (ch == '<') {
        flags |= PACK_FLAG_LT;
      } else if (ch == '>') {
        flags |= PACK_FLAG_GT;
      }
    } else {
      tmpl->idx--;
      break;
    }
  }

  if ((flags & PACK_FLAG_LT) || (!(flags & PACK_FLAG_GT) && littleendian)) {
    flags |= PACK_FLAG_LITTLEENDIAN;
  }

  *dirp = dir;
  *typep = type;
  *sizep = size;
  *countp = count;
  *flagsp = flags;
}
