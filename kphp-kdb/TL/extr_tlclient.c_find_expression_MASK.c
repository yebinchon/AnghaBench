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
 int /*<<< orphan*/  TL_SECTION_FUNCTIONS ; 
 int /*<<< orphan*/  TL_SECTION_TYPES ; 
 int /*<<< orphan*/  compiler ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 char* rl_line_buffer ; 
 struct tl_expression* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

struct tl_expression *FUNC4 (int start) {
  int brackets_cnt = 0, o = start;
  while (o >= 0 && (rl_line_buffer[o] != '(' || brackets_cnt > 0)) {
    if (rl_line_buffer[o] == '(') {
      brackets_cnt--;
    }
    if (rl_line_buffer[o] == ')') {
      brackets_cnt++;
    }
    o--;
  }

  if (o >= 0 && rl_line_buffer[o] == '(') {
    int m = o + 1;
    while (!FUNC2 (rl_line_buffer[m])) {
      m++;
    }
    char *combinator_name = FUNC1 (rl_line_buffer, o + 1, m);
    struct tl_expression *E = FUNC3 (&compiler, o ? TL_SECTION_TYPES : TL_SECTION_FUNCTIONS, combinator_name, NULL);
    FUNC0 (&combinator_name);
    return E;
  }
  return NULL;
}