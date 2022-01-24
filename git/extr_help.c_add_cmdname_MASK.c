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
struct cmdnames {scalar_t__ cnt; struct cmdname** names; int /*<<< orphan*/  alloc; } ;
struct cmdname {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdname**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdname*,char const*,char const*,int) ; 

void FUNC2(struct cmdnames *cmds, const char *name, int len)
{
	struct cmdname *ent;
	FUNC1(ent, name, name, len);
	ent->len = len;

	FUNC0(cmds->names, cmds->cnt + 1, cmds->alloc);
	cmds->names[cmds->cnt++] = ent;
}