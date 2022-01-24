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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3 (const char *expr, const char *file_name, const char *func_name,
                  int line, const char *desc, int use_perror) {
  FUNC1 (stderr, "dl_assert failed [%s : %s : %d]: ", file_name, func_name, line);
  FUNC1 (stderr, "%s\n", desc);
  if (use_perror) {
    FUNC2 ("perror description");
  }
  FUNC0();
}