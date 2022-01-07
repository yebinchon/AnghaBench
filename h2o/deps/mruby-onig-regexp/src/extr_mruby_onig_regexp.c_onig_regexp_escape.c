
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mrb_value ;
typedef int mrb_state ;
typedef int mrb_args_int ;


 int mrb_get_args (int *,char*,char**,int*) ;
 int mrb_str_cat (int *,int const,char const*,int) ;
 int const mrb_str_new (int *,int *,int ) ;

__attribute__((used)) static mrb_value
onig_regexp_escape(mrb_state* mrb, mrb_value self) {
  char* str_begin; mrb_args_int str_len;
  mrb_get_args(mrb, "s", &str_begin, &str_len);

  mrb_value const ret = mrb_str_new(mrb, ((void*)0), 0);
  char escaped_char = 0;
  int substr_count = 0;
  char const* str = str_begin;

  for(; str < (str_begin + str_len); ++str) {
    switch(*str) {
      case '\n': escaped_char = 'n'; break;
      case '\t': escaped_char = 't'; break;
      case '\r': escaped_char = 'r'; break;
      case '\f': escaped_char = 'f'; break;

      case ' ':
      case '#':
      case '$':
      case '(':
      case ')':
      case '*':
      case '+':
      case '-':
      case '.':
      case '?':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '{':
      case '|':
      case '}':
        escaped_char = *str; break;

      default: ++substr_count; continue;
    }

    mrb_str_cat(mrb, ret, str - substr_count, substr_count);
    substr_count = 0;

    char const c[] = { '\\', escaped_char };
    mrb_str_cat(mrb, ret, c, 2);
  }
  mrb_str_cat(mrb, ret, str - substr_count, substr_count);
  return ret;
}
