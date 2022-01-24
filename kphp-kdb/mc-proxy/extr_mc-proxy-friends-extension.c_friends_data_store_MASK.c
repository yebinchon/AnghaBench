#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct keep_mc_store {int list_id; int num; int /*<<< orphan*/  magic; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct connection {TYPE_1__ Out; int /*<<< orphan*/  In; TYPE_1__* Tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRIENDS_STORE_MAGIC ; 
 int /*<<< orphan*/  MAX_USERLIST_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char const*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (char const*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 char* userlist ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 

int FUNC10 (struct connection *c, int op, const char *key, int len, int flags, int expire, int bytes)
{
  int user_id = 0;
  struct keep_mc_store *Data = 0;

  //key[len] = 0;

  if (verbosity > 0) {
    FUNC5 (stderr, "mc_store: op=%d, key=\"%s\", flags=%d, expire=%d, bytes=%d, noreply=%d\n", op, key, flags, expire, bytes, 0);
  }

  if (bytes >= 0 && bytes < 1048576) {
    if (FUNC8 (key, "userlist%d", &user_id) == 1 && user_id < 0) {
      if (!c->Tmp) {
        c->Tmp = FUNC2();
        FUNC3 (c->Tmp);
      }
      Data = (struct keep_mc_store *) c->Tmp->start;
      Data->magic = FRIENDS_STORE_MAGIC;
      Data->list_id = user_id;
      Data->num = FUNC7 (userlist, MAX_USERLIST_NUM, 1, &c->In, bytes);
      FUNC1 (c->Tmp, sizeof (struct keep_mc_store));
      if (Data->num > 0 && user_id < 0) {
        FUNC9 (c->Tmp, userlist, Data->num * 4);
      }
    } else {
      FUNC0 (&c->In, bytes);
    }
  } else {
    FUNC0 (&c->In, bytes);
  }

  if (!Data || Data->num <= 0 || user_id >= 0) {
    FUNC9 (&c->Out, "NOT_STORED\r\n", 12);
    FUNC4 (c);
    FUNC6 (c);
  } else {
    FUNC9 (&c->Out, "STORED\r\n", 8);
    FUNC4 (c);
  }

  return bytes;
}