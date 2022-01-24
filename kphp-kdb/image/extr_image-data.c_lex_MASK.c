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
struct forth_condition_stack {int top; } ;

/* Variables and functions */
 int MAX_ERROR_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,void**,int*,int,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,void**,int*,int,struct forth_condition_stack*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,char*,int) ; 

int FUNC8 (char *value, int value_len, void **IP, int ip_size, char last_error[MAX_ERROR_BUF_SIZE]) {
  int i, j, k = 0, n = 0;
  FUNC7 (3, "lex (\"%.*s\", ip_size = %d\n", value_len, value, ip_size);
  struct forth_condition_stack cond_stack;
  cond_stack.top = -1;
  for (i = 0; ; k++) {
    while (i < value_len && FUNC1 (value[i])) {
      i++;
    }
    if (i >= value_len) {
      break;
    }

    if (value[i] == '"') {
      //read string literal in double quot
      i++;
      j = i;
      while (i < value_len && value[i] != '"') {
        i++;
      }
      if (i >= value_len) {
        FUNC5 (last_error, "lex: unclosed double quot");
        return -1;
      }
      value[i] = 0;
      if (!FUNC0 (value + j, IP, &n, ip_size, last_error)) {
        return -1;
      }
      i++;
      continue;
    }

    j = i;
    while (j < value_len && !FUNC1 (value[j])) {
      j++;
    }
    value[j] = 0;
    if (!FUNC3 (value + i, IP, &n, ip_size, &cond_stack, last_error)) {
      int l = FUNC6 (last_error);
      int o = MAX_ERROR_BUF_SIZE - l - 1;
      if (o > 0) {
        FUNC2 (last_error + l, 0, o + 1);
        FUNC4 (last_error + l, o , "\nlex: couldn't parse %d-th token (%s)", k, value + i);
      }
      return -1;
    }
    i = j + 1;
  }

  if (!FUNC3 ("BYE", IP, &n, ip_size, &cond_stack, last_error)) {
    return -1;
  }

  if (cond_stack.top >= 0) {
    FUNC5 (last_error, "unclosed if statement");
    return -1;
  }

  return n;
}