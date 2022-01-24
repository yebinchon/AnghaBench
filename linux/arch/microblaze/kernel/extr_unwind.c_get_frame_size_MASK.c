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
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline long FUNC1(unsigned long instr)
{
	return FUNC0((s16)(instr & 0xFFFF));
}