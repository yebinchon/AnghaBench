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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/ * source_dirname ; 

__attribute__((used)) static int FUNC3 (void) {
  if (source_dirname == NULL) {
    return -1;
  }
  struct stat st;
  if (FUNC2 (source_dirname, &st) < 0) {
    FUNC1 ("lstat for path '%s' failed. %m\n", source_dirname);
    return -1;
  }
  if (!FUNC0 (st.st_mode)) {
    FUNC1 ("'%s' isn't directory.\n", source_dirname);
    return -1;
  }
  return 0;
}