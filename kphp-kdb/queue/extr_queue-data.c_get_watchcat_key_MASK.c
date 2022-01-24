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
 int /*<<< orphan*/  Q_WATCHCAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (char*,int,int,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (long long) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (long long,int,char*) ; 
 long long FUNC5 (char*) ; 

char *FUNC6 (char *qname, int id, int ip, int timeout) {
  long long hid = FUNC5 (qname);
  if (hid == -1) {
    return NULL;
  }

  char *sid = FUNC2 (hid);
  if (my_verbosity > 1) {
    FUNC0 (stderr, "name = %s\n", sid);
  }

  char *res = FUNC1 (sid, id, ip, timeout, qname, Q_WATCHCAT);

  if (FUNC3 (res + 2, "failed", 6)) {
    FUNC4 (hid, timeout, qname);
  }

  return res;
}