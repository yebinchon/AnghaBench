
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_compiler {int dummy; } ;
struct tl_buffer {char* buff; int pos; } ;
typedef enum tl_schema_split_state { ____Placeholder_tl_schema_split_state } tl_schema_split_state ;


 int isalpha (char const) ;
 int isspace (char const) ;
 int strncmp (char const*,char*,int) ;
 int tl_add_expression (struct tl_compiler*,int,char*) ;
 int tl_failfp (struct tl_compiler*,char const*,char const*,char*,...) ;
 int tl_string_buffer_append_char (struct tl_buffer*,char const) ;
 int tl_string_buffer_free (struct tl_buffer*) ;
 int tl_string_buffer_init (struct tl_buffer*) ;





__attribute__((used)) static int tl_schema_split (struct tl_compiler *C, const char *input) {
  int section = 0;
  const char *s;
  struct tl_buffer b;
  tl_string_buffer_init (&b);

  enum tl_schema_split_state state = 128;
  for (s = input; *s; s++) {
    switch (state) {
    case 128:
      if (isspace (*s)) {
      } else if (*s == '/') {
        state = 131;
      } else if (isalpha (*s)) {
        b.pos = 0;
        tl_string_buffer_append_char (&b, *s);
        state = 130;
      } else if (*s == '-') {
        if (!strncmp (s, "---functions---", 15)) {
          if (++section > 1) {
            tl_string_buffer_free (&b);
            return tl_failfp (C, input, s, "too many ---functions--- sections");
          }
          s += 14;
        } else {
          tl_string_buffer_free (&b);
          return tl_failfp (C, input, s, "expected ---functions---");
        }
      } else {
        tl_string_buffer_free (&b);
        return tl_failfp (C, input, s, "illegal first expression's character (%c)", *s);
      }
    break;
    case 131:
      if (*s == '/') {
        state = 129;
      } else {
        tl_string_buffer_free (&b);
        return tl_failfp (C, input, s, "expected second slash, but %c found", *s);
      }
    break;
    case 129:
      if (*s == '\n') {
        state = 128;
      }
    break;
    case 130:
      if (*s == ';') {
        tl_string_buffer_append_char (&b, 0);
        tl_add_expression (C, section, b.buff);
        state = 128;
      } else if (isspace (*s)) {
        if (' ' != b.buff[b.pos-1]) {
          tl_string_buffer_append_char (&b, ' ');
        }
      } else {
        tl_string_buffer_append_char (&b, *s);
      }
    break;
    }
  }

  tl_string_buffer_free (&b);

  if (state == 130) {
    return tl_failfp (C, input, s, "last expression doesn't end by semicolon");
  }

  if (state == 131) {
    return tl_failfp (C, input, s, "found EOF, but expected second slash");
  }

  if (!section) {
    return tl_failfp (C, input, s, "don't find section '---functions---'");
  }

  return 0;
}
