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
typedef  int /*<<< orphan*/  const mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_args_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,char const*,int) ; 
 int /*<<< orphan*/  const FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state* mrb, mrb_value self) {
  char* str_begin; mrb_args_int str_len;
  FUNC0(mrb, "s", &str_begin, &str_len);

  mrb_value const ret = FUNC2(mrb, NULL, 0);
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

    FUNC1(mrb, ret, str - substr_count, substr_count);
    substr_count = 0;

    char const c[] = { '\\', escaped_char };
    FUNC1(mrb, ret, c, 2);
  }
  FUNC1(mrb, ret, str - substr_count, substr_count);
  return ret;
}