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
 int /*<<< orphan*/  C_INTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,char**,int*) ; 
 int FUNC1 (struct connection*,char*,int) ; 
 scalar_t__ FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4 (struct connection *c, const char *key, int key_len) {
  c->flags &= ~C_INTIMEOUT;
  char *new_key;
  int new_len;

  FUNC0 (key, key_len, &new_key, &new_len);

  int res = FUNC1 (c, new_key, new_len);

  if (res == -2 && FUNC2 (c)) {
    return 0;
  }

  if (res > 0) {
    FUNC3 (&c->Out, "DELETED\r\n", 9);
  } else {
    FUNC3 (&c->Out, "NOT_FOUND\r\n", 11);
  }
  return 0;
}