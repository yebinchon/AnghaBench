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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAD_TYPE_GET_PRIME ; 
 int /*<<< orphan*/  EAD_TYPE_PRIME ; 
 int /*<<< orphan*/  handle_prime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* msg ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(void)
{
	msg->type = FUNC0(EAD_TYPE_GET_PRIME);
	msg->len = 0;
	return FUNC1(EAD_TYPE_PRIME, handle_prime, 1);
}