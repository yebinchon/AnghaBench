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
 char* FullVersionStr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3 (void) {
  FUNC1 (stderr, "usage: %s [-u<username>] [-v] [-d] [-6] [-l<log-name>] (<dir> | <input> <output>)\n%s\n"
    "Trivial file transfer protocol tool.\n"
    "If <dir> is given then tool works as server.\n"
    "Otherwise tool works as client.\n"
    , progname, FullVersionStr);
  FUNC2 ();
  FUNC0 (2);
}