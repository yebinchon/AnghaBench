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
struct flush_icache_range_args {unsigned long start; unsigned long end; unsigned int type; int user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned int,int) ; 

__attribute__((used)) static inline void FUNC1(void *args)
{
	struct flush_icache_range_args *fir_args = args;
	unsigned long start = fir_args->start;
	unsigned long end = fir_args->end;
	unsigned int type = fir_args->type;
	bool user = fir_args->user;

	FUNC0(start, end, type, user);
}