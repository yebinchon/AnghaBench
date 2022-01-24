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
 scalar_t__ STATS_BUFF_SIZE ; 
 int FUNC0 (struct connection*,char*,scalar_t__) ; 
 char* stats_buff ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3 (struct connection *c) {
  int len = FUNC1 ();
  int len2 = FUNC0 (c, stats_buff + len, STATS_BUFF_SIZE - len);
  FUNC2 (&c->Out, stats_buff, len + len2);
  FUNC2 (&c->Out, "END\r\n", 5);
  return 0;
}