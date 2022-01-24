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
 int FUNC1 () ; 
 int FUNC2 (struct connection*,char*,int) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4 (struct connection *c) {
  int len = FUNC1 ();
  int len2 = FUNC2 (c, stats_buff + len, STATS_BUFF_SIZE - len);
  FUNC3 (&c->Out, stats_buff, len + len2);
  FUNC3 (&c->Out, "END\r\n", 5);
  FUNC0 (len + len2 + 1 < STATS_BUFF_SIZE);
  return 0;
}