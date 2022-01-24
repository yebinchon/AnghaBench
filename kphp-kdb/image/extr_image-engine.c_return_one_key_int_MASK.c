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
 int FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC2 (struct connection *c, const char *key, int i) {
  static char buff[256], s[32];
  int vlen = FUNC0 (s, "i:%d;", i);
  int l = FUNC0 (buff, "VALUE %s 1 %d\r\n", key, vlen);
  FUNC1 (&c->Out, buff, l);
  FUNC1 (&c->Out, s, vlen);
  FUNC1 (&c->Out, "\r\n", 2);
  return 0;
}