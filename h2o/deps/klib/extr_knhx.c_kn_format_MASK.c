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
typedef  int /*<<< orphan*/  kstring_t ;
typedef  int /*<<< orphan*/  knhx1_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char*) ; 

void FUNC1(const knhx1_t *node, int root, kstring_t *s) // TODO: get rid of recursion
{
	char numbuf[128];
	FUNC0(node, &node[root], s, numbuf);
}