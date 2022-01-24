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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LE_DELMSG_MAGIC ; 
 int /*<<< orphan*/  LE_DELOLDMSG_MAGIC ; 
 int /*<<< orphan*/  LE_UNDELMSG_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delmsg_queries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC7 (struct connection *c, char *str, int len) {
  int uid, msgid;

  while (*str == ' ') { str++; }

  if (verbosity > 0) {
    FUNC5 (stderr, "delete \"%s\"\n", str);
  }

  switch (*str) {

  case 'd':
    if (FUNC6 (str, "delmsg%d,%d ", &uid, &msgid) == 2 && uid > 0 && msgid) {
      delmsg_queries++;
      if (verbosity >= 1) {
	FUNC5 (stderr, "delete_msg(%d,%d)\n", uid, msgid);
      }
      FUNC0 (LE_DELMSG_MAGIC, uid, msgid, 0);
      FUNC2 (FUNC4 (uid, 1), msgid);
      return 1;
    }
    break;

  case 'u':
    if (FUNC6 (str, "undelmsg%d,%d ", &uid, &msgid) == 2 && uid > 0 && msgid) {
      delmsg_queries++;
      if (verbosity >= 1) {
	FUNC5 (stderr, "undelete_msg(%d,%d)\n", uid, msgid);
      }
      FUNC0 (LE_UNDELMSG_MAGIC, uid, msgid, 0);
      FUNC3 (FUNC4 (uid, 1), msgid);
      return 1;
    }
    break;

  case 'w':
    if (FUNC6 (str, "wipemsg%d,%d ", &uid, &msgid) == 2 && uid > 0 && msgid) {
      delmsg_queries++;
      if (verbosity >= 1) {
	FUNC5 (stderr, "wipe_msg(%d,%d)\n", uid, msgid);
      }
      FUNC0 (LE_DELOLDMSG_MAGIC, uid, msgid, 0);
      FUNC1 (FUNC4 (uid, 1), msgid);
      return 1;
    }
  }
  return 0;
}