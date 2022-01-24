#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tree_write_stack {char* path; struct tree_write_stack* next; int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* the_hash_algo ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct tree_write_stack *tws,
		const char *path)
{
	struct tree_write_stack *n;
	FUNC0(!tws->next);
	FUNC0(tws->path[0] == '\0' && tws->path[1] == '\0');
	n = (struct tree_write_stack *)
		FUNC2(sizeof(struct tree_write_stack));
	n->next = NULL;
	FUNC1(&n->buf, 256 * (32 + the_hash_algo->hexsz)); /* assume 256 entries per tree */
	n->path[0] = n->path[1] = '\0';
	tws->next = n;
	tws->path[0] = path[0];
	tws->path[1] = path[1];
}