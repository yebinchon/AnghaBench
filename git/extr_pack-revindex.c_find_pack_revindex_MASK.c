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
struct revindex_entry {int dummy; } ;
struct packed_git {struct revindex_entry* revindex; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (struct packed_git*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct packed_git*) ; 

struct revindex_entry *FUNC2(struct packed_git *p, off_t ofs)
{
	int pos;

	if (FUNC1(p))
		return NULL;

	pos = FUNC0(p, ofs);

	if (pos < 0)
		return NULL;

	return p->revindex + pos;
}