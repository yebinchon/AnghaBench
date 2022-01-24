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
struct keep_mc_header {int list_id; int num; } ;
struct connection {int /*<<< orphan*/  Tmp; int /*<<< orphan*/  In; } ;
typedef  int /*<<< orphan*/  D ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_USERLIST_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int FUNC2 (struct keep_mc_header*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int*,int*) ; 
 struct keep_mc_header* userlist ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct keep_mc_header*,int) ; 

int FUNC5 (struct connection *c, const char *key, int key_len, int size) {
  int pos = 0;
  int list_id;
  FUNC3 (key, "userlist%d%n", &list_id, &pos);
  if (pos != key_len || list_id >= 0) {
    FUNC0 (&c->In, size);
    return 0;
  }
  int res = FUNC2 (userlist, MAX_USERLIST_NUM, 1, &c->In, size);
  //int res = parse_list (userlist, MAX_USERLIST_NUM, &c->In, size);
  if (res <= 0) {
    return 0;
  }
  struct keep_mc_header D;
  D.list_id = list_id;
  D.num = res;
  FUNC1 (c);
  FUNC4 (c->Tmp, &D, sizeof(D));
  FUNC4 (c->Tmp, userlist, res * 4);
  return 1;
}