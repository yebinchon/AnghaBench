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
struct TYPE_2__ {int /*<<< orphan*/  item_path_offset; } ;
typedef  TYPE_1__ git_sortedcache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *payload, void *tgt_item, void *src_item)
{
	git_sortedcache *sc = payload;
	/* path will already have been copied by upsert */
	FUNC0(tgt_item, src_item, sc->item_path_offset);
	return 0;
}