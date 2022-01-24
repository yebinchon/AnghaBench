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
typedef  scalar_t__ timestamp_t ;
struct rerere_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rerere_id*) ; 
 scalar_t__ FUNC1 (struct rerere_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct rerere_id*) ; 

__attribute__((used)) static void FUNC3(struct rerere_id *id,
		      timestamp_t cutoff_resolve, timestamp_t cutoff_noresolve)
{
	timestamp_t then;
	timestamp_t cutoff;

	then = FUNC1(id);
	if (then)
		cutoff = cutoff_resolve;
	else {
		then = FUNC0(id);
		if (!then)
			return;
		cutoff = cutoff_noresolve;
	}
	if (then < cutoff)
		FUNC2(id);
}