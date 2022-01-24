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
struct topa {int last; } ;
struct topa_page {struct topa_entry* table; struct topa topa; } ;
struct topa_entry {int dummy; } ;
struct pt_buffer {struct topa* last; struct topa* first; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  list ; 
 struct topa* FUNC0 (struct topa*,int /*<<< orphan*/ ) ; 
 struct topa_page* FUNC1 (struct topa*) ; 

__attribute__((used)) static struct topa_entry *
FUNC2(struct pt_buffer *buf, struct topa_entry *te)
{
	unsigned long table = (unsigned long)te & ~(PAGE_SIZE - 1);
	struct topa_page *tp;
	struct topa *topa;

	tp = (struct topa_page *)table;
	if (tp->table != te)
		return --te;

	topa = &tp->topa;
	if (topa == buf->first)
		topa = buf->last;
	else
		topa = FUNC0(topa, list);

	tp = FUNC1(topa);

	return &tp->table[topa->last - 1];
}