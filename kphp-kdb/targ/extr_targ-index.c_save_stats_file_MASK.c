#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  g; } ;

/* Variables and functions */
 TYPE_1__ AdStats ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 

int FUNC5 (char *stats_filename) {
  if (verbosity > 0) {
    FUNC2 (stderr, "saving global click/view statistics to %s\n", stats_filename);
  }
  int fd = FUNC3 (stats_filename, O_WRONLY | O_CREAT | O_EXCL, 0644);
  if (fd < 0) {
    FUNC2 (stderr, "cannot open statistics file %s for writing: %m\n", stats_filename);
    return -1;
  }
  int w = FUNC4 (fd, AdStats.g, sizeof (AdStats.g));
  FUNC0 (w == sizeof (AdStats.g));
  FUNC0 (FUNC1 (fd) >= 0);
  return 1;
}