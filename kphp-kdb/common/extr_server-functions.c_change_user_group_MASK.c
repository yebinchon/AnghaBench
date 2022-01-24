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
struct passwd {int /*<<< orphan*/  pw_uid; scalar_t__ pw_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 char* DEFAULT_ENGINE_USER ; 
 scalar_t__ FUNC0 () ; 
 struct group* FUNC1 (char*) ; 
 struct passwd* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8 (char *username, char *groupname) {
  struct passwd *pw;
  /* lose root privileges if we have them */
  if (FUNC3() == 0 || FUNC0() == 0) {
    if (username == 0 || *username == '\0') {
      username = DEFAULT_ENGINE_USER;
    }
    if ((pw = FUNC2 (username)) == 0) {
      FUNC4 ("change_user_group: can't find the user %s to switch to\n", username);
      return -1;
    }
    gid_t gid = pw->pw_gid;
    if (FUNC6 (1, &gid) < 0) {
      FUNC4 ("change_user_group: failed to clear supplementary groups list: %m\n");
      return -1;
    }

    if (groupname) {
      struct group *g = FUNC1 (groupname);
      if (g == NULL) {
        FUNC4 ("change_user_group: can't find the group %s to switch to\n", groupname);
        return -1;
      }
      gid = g->gr_gid;
    }

    if (FUNC5 (gid) < 0) {
      FUNC4 ("change_user_group: setgid (%d) failed. %m\n", (int) gid);
      return -1;
    }

    if (FUNC7 (pw->pw_uid) < 0) {
      FUNC4 ("change_user_group: failed to assume identity of user %s\n", username);
      return -1;
    }
  }
  return 0;
}