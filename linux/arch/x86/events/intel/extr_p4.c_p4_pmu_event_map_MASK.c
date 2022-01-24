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
typedef  int /*<<< orphan*/  u64 ;
struct p4_event_bind {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 struct p4_event_bind* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * p4_general_events ; 

__attribute__((used)) static u64 FUNC4(int hw_event)
{
	struct p4_event_bind *bind;
	unsigned int esel;
	u64 config;

	config = p4_general_events[hw_event];
	bind = FUNC2(config);
	esel = FUNC1(bind->opcode);
	config |= FUNC3(FUNC0(esel));

	return config;
}