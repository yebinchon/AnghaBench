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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int FUNC6 (char const*) ; 
 int verbosity ; 

int FUNC7 (const char *name) {
  int l = FUNC6 (name);
  FUNC1 (l >= 4 && !FUNC5 (name + l - 4, ".tmp") && l <= 256);
  static char tmpbuff[256];
  FUNC3 (tmpbuff, name, l - 4);
  tmpbuff[l - 4] = 0;
  if (verbosity > 1) {
    FUNC2 (stderr, "renaming temporary snapshot %s to %s\n", name, tmpbuff);
  }
  if (!FUNC0 (tmpbuff, 0)) {
    FUNC2 (stderr, "fatal: snapshot %s already exists\n", tmpbuff);
    return -1;
  }
  return FUNC4 (name, tmpbuff);
}