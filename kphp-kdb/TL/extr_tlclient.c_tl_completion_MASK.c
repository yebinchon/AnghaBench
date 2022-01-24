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
struct tl_expression {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  client_command_generator ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (char*,int,int) ; 
 struct tl_expression* expected_expr ; 
 scalar_t__ expected_type ; 
 struct tl_expression* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char** FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 char* rl_line_buffer ; 
 int /*<<< orphan*/  tl_arg_generator ; 
 int /*<<< orphan*/  tl_command_generator ; 
 scalar_t__ FUNC6 (struct tl_expression*,char*) ; 
 int /*<<< orphan*/  tl_type_generator ; 

__attribute__((used)) static char **FUNC7 (const char *text, int start, int end) {
  if (start == 0) {
    return FUNC5 (text, client_command_generator);
  }

  if ( (start == 1 && rl_line_buffer[0] == '(') || (start == 5 && !FUNC4 (rl_line_buffer, "help ", 5))) {
    return FUNC5 (text, tl_command_generator);
  }

  int j = start - 1;
  while (j > 0 && rl_line_buffer[j] != '(' && !FUNC3 (rl_line_buffer[j])) {
    if (rl_line_buffer[j] == ')') {
      j = 0;
    }
    j--;
  }
  if (j > 0 && rl_line_buffer[j] == '(' && rl_line_buffer[j-1] == ':') {
    int i = j - 2;
    while (i > 0 && !FUNC3 (rl_line_buffer[i])) {
      i--;
    }
    struct tl_expression *E = FUNC2 (i);
    if (E != NULL) {
      char *field_name = FUNC1 (rl_line_buffer, i + 1, j - 1);
      //kprintf ("field_name: %s\n", field_name);
      expected_type = FUNC6 (E, field_name);
      //kprintf ("expected_type: %s\n", expected_type);
      FUNC0 (&field_name);
      if (expected_type) {
        return FUNC5 (text, tl_type_generator);
      }
    }
  }

  struct tl_expression *E = FUNC2 (start);
  if (E) {
    expected_expr = E;
    return FUNC5 (text, tl_arg_generator);
  }
  return NULL;
}