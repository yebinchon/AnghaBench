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
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(void *ptr, unsigned long len,
					unsigned long value)
{
	FUNC1(!FUNC0(len, sizeof(unsigned long)));
	FUNC2(ptr, value, len / sizeof(unsigned long));
}