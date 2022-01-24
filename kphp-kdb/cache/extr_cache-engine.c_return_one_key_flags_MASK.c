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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3 (struct connection *c, const char *key, char *val, int vlen, int flags) {
  static char buff[4096];
  int l = FUNC1 (buff, sizeof (buff), "VALUE %s %d %d\r\n", key, flags, vlen);
  FUNC0 (l < sizeof (buff));
  FUNC2 (&c->Out, buff, l);
  FUNC2 (&c->Out, val, vlen);
  FUNC2 (&c->Out, "\r\n", 2);
  return 0;
}