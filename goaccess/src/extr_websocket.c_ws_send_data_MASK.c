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
typedef  int /*<<< orphan*/  WSOpcode ;
typedef  int /*<<< orphan*/  WSClient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

int
FUNC3 (WSClient * client, WSOpcode opcode, const char *p, int sz)
{
  char *buf = NULL;

  buf = FUNC1 (p, sz);
  FUNC2 (client, opcode, buf, sz);
  FUNC0 (buf);

  return 0;
}