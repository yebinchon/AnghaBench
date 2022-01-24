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
 int /*<<< orphan*/  MAP_SIZE ; 
 int /*<<< orphan*/  Map ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* groups_fname ; 
 scalar_t__ map_fd ; 
 scalar_t__ map_size ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

void FUNC5 (int force) {
  if (!groups_fname) {
    if (!force) {
      FUNC2 (stderr, "warning: no map file specified\n");
    } else {
      FUNC2 (stderr, "fatal: no map file specified\n");
      FUNC1 (2);
    }
    return;
  }
  map_fd = FUNC3 (groups_fname, O_RDONLY);
  if (map_fd < 0) {
    FUNC2 (stderr, "cannot open map file %s: %m", groups_fname);
    if (force) {
      FUNC1 (2);
    }
    return;
  }
  map_size = FUNC4 (map_fd, Map, MAP_SIZE);
  FUNC0 (map_fd);
  if (map_size < 0) {
    map_size = 0;
  }
  if (verbosity > 0) {
    FUNC2 (stderr, "read %ld bytes from map file %s\n", map_size, groups_fname);
  }
}