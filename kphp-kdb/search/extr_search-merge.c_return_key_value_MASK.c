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
 int FUNC1 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3 (struct connection *c, char *key, char *val, int vlen) {
  static char buff[2048];
  int l = FUNC1 (buff, "VALUE %s 0 %d\r\n", key, vlen);
  FUNC0 (l <= 2048);
  FUNC2 (&c->Out, buff, l);
  FUNC2 (&c->Out, val, vlen);
  FUNC2 (&c->Out, "\r\nEND\r\n", 7);
  return 0;
}