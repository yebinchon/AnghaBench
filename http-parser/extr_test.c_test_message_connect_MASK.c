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
struct message {char* name; int /*<<< orphan*/  type; scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct message const*) ; 
 int num_messages ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (scalar_t__) ; 

void
FUNC6 (const struct message *msg)
{
  char *buf = (char*) msg->raw;
  size_t buflen = FUNC5(msg->raw);

  FUNC3(msg->type);

  FUNC2(buf, buflen);

  if (num_messages != 1) {
    FUNC4("\n*** num_messages != 1 after testing '%s' ***\n\n", msg->name);
    FUNC0();
  }

  if(!FUNC1(0, 1, msg)) FUNC0();
}