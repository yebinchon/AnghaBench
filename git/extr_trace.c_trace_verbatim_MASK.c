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
struct trace_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_key*,void const*,unsigned int) ; 

void FUNC2(struct trace_key *key, const void *buf, unsigned len)
{
	if (!FUNC0(key))
		return;
	FUNC1(key, buf, len);
}