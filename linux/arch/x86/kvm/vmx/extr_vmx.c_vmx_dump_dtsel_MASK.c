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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ GUEST_GDTR_BASE ; 
 scalar_t__ GUEST_GDTR_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(char *name, uint32_t limit)
{
	FUNC0("%s                           limit=0x%08x, base=0x%016lx\n",
	       name, FUNC1(limit),
	       FUNC2(limit + GUEST_GDTR_BASE - GUEST_GDTR_LIMIT));
}