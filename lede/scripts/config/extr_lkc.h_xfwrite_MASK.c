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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC2 (void const*,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static inline void FUNC3(const void *str, size_t len, size_t count, FILE *out)
{
	FUNC0(len != 0);

	if (FUNC2(str, len, count, out) != count)
		FUNC1(stderr, "Error in writing or end of file.\n");
}