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
 int STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,char*,char const*,int,int) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3 (struct connection *c, const char *key, char *val, int vlen, int flags) {
  int l = FUNC1 (stats_buff, STATS_BUFF_SIZE, "VALUE %s %d %d\r\n", key, flags, vlen);
  FUNC0 (l <= STATS_BUFF_SIZE);
  FUNC2 (&c->Out, stats_buff, l);
  FUNC2 (&c->Out, val, vlen);
  FUNC2 (&c->Out, "\r\n", 2);
  return 0;
}