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
struct stat {int st_size; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

off_t
FUNC3 (const char *filename)
{
  struct stat st;

  if (FUNC1 (filename, &st) == 0)
    return st.st_size;

  FUNC0 (("Can't determine size of %s: %s\n", filename, FUNC2 (errno)));

  return -1;
}