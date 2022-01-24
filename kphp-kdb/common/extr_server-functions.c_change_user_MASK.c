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
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 char* DEFAULT_ENGINE_USER ; 
 scalar_t__ FUNC0 () ; 
 struct passwd* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8 (char *username) {
  struct passwd *pw;
  /* lose root privileges if we have them */
  if (FUNC2() == 0 || FUNC0() == 0) {
    if (username == 0 || *username == '\0') {
      username = DEFAULT_ENGINE_USER;
//      fprintf (stderr, "can't run as root without the -u switch\n");
//      return -1;
    }
    if ((pw = FUNC1 (username)) == 0) {
      FUNC4 ("can't find the user %s to switch to\n", username);
      return -1;
    }
    gid_t gid = pw->pw_gid;
    if (FUNC6(1, &gid) < 0) {
      FUNC4 ("failed to clear supplementary groups list: %m\n");
      return -1;
    }
    if (FUNC3(username, gid) != 0) {
      FUNC4 ("failed to load groups of user %s: %m\n", username);
      return -1;
    }
    if (FUNC5 (pw->pw_gid) < 0 || FUNC7 (pw->pw_uid) < 0) {
      FUNC4 ("failed to assume identity of user %s\n", username);
      return -1;
    }
  }
  return 0;
}