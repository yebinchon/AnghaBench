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
typedef  int /*<<< orphan*/  WSClient ;

/* Variables and functions */
 int /*<<< orphan*/  WS_OPCODE_CLOSE ; 
 unsigned short FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short*,int) ; 
 scalar_t__ FUNC2 (char*,int,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static int
FUNC4 (WSClient * client, unsigned short code, const char *err)
{
  unsigned int len;
  unsigned short code_be;
  char buf[128] = { 0 };

  len = 2;
  code_be = FUNC0 (code);
  FUNC1 (buf, &code_be, 2);
  if (err)
    len += FUNC2 (buf + 2, sizeof buf - 4, "%s", err);

  return FUNC3 (client, WS_OPCODE_CLOSE, buf, len);
}