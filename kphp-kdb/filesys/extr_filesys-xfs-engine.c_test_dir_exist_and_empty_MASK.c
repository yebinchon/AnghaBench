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
typedef  int /*<<< orphan*/  file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const* const,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const* const,...) ; 
 scalar_t__ FUNC5 (char const* const,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const* const) ; 

__attribute__((used)) static int FUNC7 (const char *const path, struct stat *b) {
  if (FUNC5 (path, b) || !FUNC0 (b->st_mode)) {
    FUNC4 ("Directory %s doesn't exist\n", path);
    FUNC1 (1);
  }

  file_t *px;
  int n = FUNC3 (path, &px, 0, 1);
  FUNC2 (px);
  if (n < 0) {
    FUNC4 ("getdir (%s) returns error code %d.\n", path, n);
    FUNC1 (1);
  }
  if (n > 0) {
    FUNC6 (1, "%s isn't empty directory!\n", path);
    return 0;
  }
  return 1;
}