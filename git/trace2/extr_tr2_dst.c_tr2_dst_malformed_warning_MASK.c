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
struct tr2_dst {int /*<<< orphan*/  sysenv_var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC2(struct tr2_dst *dst,
				      const char *tgt_value)
{
	FUNC1("trace2: unknown value for '%s': '%s'",
		FUNC0(dst->sysenv_var), tgt_value);
}