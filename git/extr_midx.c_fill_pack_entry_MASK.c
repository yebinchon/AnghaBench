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
typedef  int /*<<< orphan*/  uint32_t ;
struct packed_git {int /*<<< orphan*/  mtime; } ;
struct pack_midx_entry {int /*<<< orphan*/  offset; int /*<<< orphan*/  pack_mtime; int /*<<< orphan*/  pack_int_id; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct packed_git*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uint32_t pack_int_id,
			    struct packed_git *p,
			    uint32_t cur_object,
			    struct pack_midx_entry *entry)
{
	if (!FUNC3(&entry->oid, p, cur_object))
		FUNC1(FUNC0("failed to locate object %d in packfile"), cur_object);

	entry->pack_int_id = pack_int_id;
	entry->pack_mtime = p->mtime;

	entry->offset = FUNC2(p, cur_object);
}