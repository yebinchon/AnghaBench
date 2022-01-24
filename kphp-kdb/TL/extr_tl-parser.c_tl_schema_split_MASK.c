#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tl_compiler {int dummy; } ;
struct tl_buffer {char* buff; int /*<<< orphan*/  pos; } ;
typedef  enum tl_schema_split_state { ____Placeholder_tl_schema_split_state } tl_schema_split_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_compiler*,int,char*) ; 
 int FUNC4 (struct tl_compiler*,char const*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct tl_buffer*,char const) ; 
 int /*<<< orphan*/  FUNC6 (struct tl_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct tl_buffer*) ; 
#define  tsss_after_slash 131 
#define  tsss_expression 130 
#define  tsss_line_comment 129 
#define  tsss_start_expression 128 

__attribute__((used)) static int FUNC8 (struct tl_compiler *C, const char *input) {
  int section = 0;
  const char *s;
  struct tl_buffer b;
  FUNC7 (&b);

  enum tl_schema_split_state state = tsss_start_expression;
  for (s = input; *s; s++) {
    switch (state) {
    case tsss_start_expression:
      if (FUNC1 (*s)) {
      } else if (*s == '/') {
        state = tsss_after_slash;
      } else if (FUNC0 (*s)) {
        b.pos = 0;
        FUNC5 (&b, *s);
        state = tsss_expression;
      } else if (*s == '-') {
        if (!FUNC2 (s, "---functions---", 15)) {
          if (++section > 1) {
            FUNC6 (&b);
            return FUNC4 (C, input, s, "too many ---functions--- sections");
          }
          s += 14;
        } else {
          FUNC6 (&b);
          return FUNC4 (C, input, s, "expected ---functions---");
        }
      } else {
        FUNC6 (&b);
        return FUNC4 (C, input, s, "illegal first expression's character (%c)", *s);
      }
    break;
    case tsss_after_slash:
      if (*s == '/') {
        state = tsss_line_comment;
      } else {
        FUNC6 (&b);
        return FUNC4 (C, input, s, "expected second slash, but %c found", *s);
      }
    break;
    case tsss_line_comment:
      if (*s == '\n') {
        state = tsss_start_expression;
      }
    break;
    case tsss_expression:
      if (*s == ';') {
        FUNC5 (&b, 0);
        FUNC3 (C, section, b.buff);
        state = tsss_start_expression;
      } else if (FUNC1 (*s)) {
        if (' ' != b.buff[b.pos-1]) {
          FUNC5 (&b, ' ');
        }
      } else {
        FUNC5 (&b, *s);
      }
    break;
    }
  }

  FUNC6 (&b);

  if (state == tsss_expression) {
    return FUNC4 (C, input, s, "last expression doesn't end by semicolon");
  }

  if (state == tsss_after_slash) {
    return FUNC4 (C, input, s, "found EOF, but expected second slash");
  }

  if (!section) {
    return FUNC4 (C, input, s, "don't find section '---functions---'");
  }

  return 0;
}