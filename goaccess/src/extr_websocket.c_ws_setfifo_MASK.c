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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_OK ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6 (const char *pipename)
{
  struct stat fistat;
  const char *f = pipename;

  if (FUNC2 (f, F_OK) == 0)
    return 0;

  if (FUNC3 (f, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH) < 0)
    FUNC0 ("Unable to set fifo: %s.", FUNC5 (errno));
  if (FUNC4 (f, &fistat) < 0)
    FUNC0 ("Unable to stat fifo: %s.", FUNC5 (errno));
  if (!FUNC1 (fistat.st_mode))
    FUNC0 ("pipe is not a fifo: %s.", FUNC5 (errno));

  return 0;
}