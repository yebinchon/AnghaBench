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
struct toptree {int dummy; } ;

/* Variables and functions */
 int emu_nodes ; 
 int /*<<< orphan*/  FUNC0 (struct toptree*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct toptree*) ; 

__attribute__((used)) static void FUNC2(struct toptree *tree)
{
	int nid;

	FUNC1(tree);
	for (nid = 0; nid < emu_nodes; nid++)
		FUNC0(tree, nid);
}