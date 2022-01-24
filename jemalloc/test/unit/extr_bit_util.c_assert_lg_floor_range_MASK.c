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

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,unsigned int,char*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,unsigned int,char*,unsigned int,size_t) ; 

void
FUNC4(size_t input, unsigned answer) {
	if (input == 1) {
		FUNC1(0, answer, "Got %u as lg_floor of 1", answer);
		return;
	}
	FUNC2(input, (FUNC0(1) << answer),
	    "Got %u as lg_floor of %zu", answer, input);
	FUNC3(input, (FUNC0(1) << (answer + 1)),
	    "Got %u as lg_floor of %zu", answer, input);
}