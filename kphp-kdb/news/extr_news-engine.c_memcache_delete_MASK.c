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
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_MODE ; 
 int /*<<< orphan*/  C_INTIMEOUT ; 
 int /*<<< orphan*/  NOTIFY_MODE ; 
 int /*<<< orphan*/  UG_MODE ; 
 int /*<<< orphan*/  delete_queries ; 
 int FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int,int,int,int) ; 
 int FUNC5 (int,int,int,int) ; 
 int FUNC6 (int,int,int,int,int) ; 
 int FUNC7 (char const*,char*,int*,...) ; 
 int ug_mode ; 
 int /*<<< orphan*/  undelete_queries ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC9 (struct connection *c, const char *key, int key_len) {
  c->flags &= ~C_INTIMEOUT;
  int user_id, type, owner, place, item, res = 0;
  switch (*key) {
  case 'u':
    if (UG_MODE && FUNC7 (key, "updates%d", &user_id) == 1 && user_id && (user_id ^ ug_mode) >= 0) {
      delete_queries++;
      res = FUNC3 (user_id);
    } else if (COMM_MODE && FUNC7 (key, "undelete_comm_update%d_%d_%d_%d", &type, &owner, &place, &item) == 4 && place > 0 && item > 0) {
      undelete_queries++;
      res = FUNC5 (type, owner, place, item);
    } else if (NOTIFY_MODE && FUNC7 (key, "undelete_notification_update%d_%d_%d_%d", &type, &owner, &place, &item) == 4 && place > 0 && item >= 0) {
      undelete_queries++;
      res = FUNC5 (type, owner, place, item);
    } else if (NOTIFY_MODE && FUNC7 (key, "undelete_notification_user_update%d_%d_%d_%d_%d", &user_id, &type, &owner, &place, &item) == 5 && place > 0 && item >= 0) {
      undelete_queries++;
      res = FUNC6 (user_id, type, owner, place, item);
    }
    break;
  case 'c':
    if (COMM_MODE && FUNC7 (key, "comm_updates%d_%d_%d", &type, &owner, &place) == 3 && place > 0) {
      delete_queries++;
      res = FUNC2 (type, owner, place);
    } else if (COMM_MODE && FUNC7 (key, "comm_update%d_%d_%d_%d", &type, &owner, &place, &item) == 4 && place > 0 && item > 0) {
      delete_queries++;
      res = FUNC1 (type, owner, place, item);
    }
    break;
  case 'b':
    if (COMM_MODE && FUNC7 (key, "bookmark_%d_%d_%d:%d", &type, &owner, &place, &user_id) == 4) {
      res = FUNC0 (user_id, type, owner, place, 0);
    }
    break;
  case 'n':
    if (NOTIFY_MODE && FUNC7 (key, "notification_updates%d_%d_%d", &type, &owner, &place) == 3 && place > 0) {
      delete_queries ++;
      res = FUNC2 (type, owner, place);
    } else if (NOTIFY_MODE && FUNC7 (key, "notification_update%d_%d_%d_%d", &type, &owner, &place, &item) == 4 && place > 0) {
      delete_queries++;
      res = FUNC1 (type, owner, place, item);
    } else if (NOTIFY_MODE && FUNC7 (key, "notification_user_update%d_%d_%d_%d_%d", &user_id, &type, &owner, &place, &item) == 5 && place > 0) {
      delete_queries++;
      res = FUNC4 (user_id, type, owner, place, item);
    }

    break;
  }

  if (res > 0) {
    FUNC8 (&c->Out, "DELETED\r\n", 9);
  } else {
    FUNC8 (&c->Out, "NOT_FOUND\r\n", 11);
  }

  return 0;
}