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
struct tl_compiler {int flag_reading_builtin_schema; int /*<<< orphan*/ * expr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* tl_builtin_shema ; 
 int /*<<< orphan*/  FUNC1 (struct tl_compiler*) ; 
 int FUNC2 (struct tl_compiler*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tl_compiler*,char const*) ; 

int FUNC4 (struct tl_compiler *C, const char *input) {
  FUNC1 (C);
  C->flag_reading_builtin_schema = 1;
  int r = FUNC3 (C, tl_builtin_shema);
  FUNC0 (!r);
  C->flag_reading_builtin_schema = 0;

  r = FUNC3 (C, input);
  if (r < 0) {
    return r;
  }

  int i;
  for (i = 0; i < 2; i++) {
    r = FUNC2 (C, &C->expr[i]);
    if (r < 0) {
      return r;
    }
  }

  return 0;
}