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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_compiler*) ; 
 char* FUNC2 (struct tl_compiler*,char const* const) ; 
 int FUNC3 (struct tl_compiler*,char*) ; 

int FUNC4 (struct tl_compiler *C, const char *const filename) {
  FUNC1 (C);
  char *a = FUNC2 (C, filename);
  if (a == NULL) {
    return -1;
  }
  int r = FUNC3 (C, a);
  FUNC0 (a);

  return r;
}