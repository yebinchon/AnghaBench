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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4 (struct connection *c, const char *key, int key_len, char *val, int vlen, int flags) {
  static char buff[65536];
  int l = FUNC2 (buff, "VALUE ");
  FUNC1 (buff + l, key, key_len);
  l += key_len;
  l += FUNC2 (buff + l, " %d %d\r\n", flags, vlen);
  FUNC0 (l <= 65536);
  FUNC3 (&c->Out, buff, l);
  FUNC3 (&c->Out, val, vlen);
  FUNC3 (&c->Out, "\r\n", 2);
  return l;
}