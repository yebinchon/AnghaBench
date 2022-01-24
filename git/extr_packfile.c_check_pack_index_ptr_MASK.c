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
struct packed_git {unsigned char* index_data; int index_size; int /*<<< orphan*/  pack_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(const struct packed_git *p, const void *vptr)
{
	const unsigned char *ptr = vptr;
	const unsigned char *start = p->index_data;
	const unsigned char *end = start + p->index_size;
	if (ptr < start)
		FUNC1(FUNC0("offset before start of pack index for %s (corrupt index?)"),
		    p->pack_name);
	/* No need to check for underflow; .idx files must be at least 8 bytes */
	if (ptr >= end - 8)
		FUNC1(FUNC0("offset beyond end of pack index for %s (truncated index?)"),
		    p->pack_name);
}