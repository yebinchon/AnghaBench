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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4 (char **buf)
{
  const char *term = "/dev/tty";

  if (!FUNC0 (STDERR_FILENO) || (term = FUNC2 (STDERR_FILENO)) == 0) {
    if (!FUNC0 (STDOUT_FILENO) || (term = FUNC2 (STDOUT_FILENO)) == 0) {
      if (!FUNC0 (STDIN_FILENO) || (term = FUNC2 (STDIN_FILENO)) == 0) {
        term = "/dev/tty";
      }
    }
  }
  *buf = FUNC3 (term);

  return FUNC1 (term, O_RDONLY);
}