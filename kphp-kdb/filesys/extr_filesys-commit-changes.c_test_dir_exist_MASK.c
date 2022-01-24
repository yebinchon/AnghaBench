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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const* const) ; 
 scalar_t__ FUNC3 (char const* const,struct stat*) ; 

__attribute__((used)) static void FUNC4 (const char *const path) {
  struct stat buf;
  if (FUNC3 (path, &buf) || !FUNC0 (buf.st_mode)) {
    FUNC2 ("Directory %s doesn't exist\n", path);
    FUNC1 (1);
  }
}