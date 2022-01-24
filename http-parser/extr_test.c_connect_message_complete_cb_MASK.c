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
struct TYPE_2__ {int /*<<< orphan*/  should_keep_alive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* messages ; 
 size_t num_messages ; 
 int /*<<< orphan*/  parser ; 

int
FUNC2 (http_parser *p)
{
  messages[num_messages].should_keep_alive = FUNC0(&parser);
  return FUNC1(p);
}