#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  http_parser ;
struct TYPE_2__ {scalar_t__ body_is_final; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* messages ; 
 size_t num_messages ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4 (const http_parser *p)
{
  if (messages[num_messages].body_is_final) {
    FUNC2(stderr, "\n\n *** Error http_body_is_final() should return 1 "
                    "on last on_body callback call "
                    "but it doesn't! ***\n\n");
    FUNC1(0);
    FUNC0();
  }
  messages[num_messages].body_is_final = FUNC3(p);
}