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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ pack_edges ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static void FUNC2(const char *edges)
{
	if (pack_edges)
		FUNC0(pack_edges);
	pack_edges = FUNC1(edges, "a");
}