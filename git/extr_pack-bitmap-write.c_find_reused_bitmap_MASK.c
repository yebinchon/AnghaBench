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
struct object_id {int dummy; } ;
struct ewah_bitmap {int dummy; } ;
typedef  scalar_t__ khiter_t ;
struct TYPE_2__ {int /*<<< orphan*/  reused; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct object_id const) ; 
 struct ewah_bitmap* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ writer ; 

__attribute__((used)) static struct ewah_bitmap *FUNC3(const struct object_id *oid)
{
	khiter_t hash_pos;

	if (!writer.reused)
		return NULL;

	hash_pos = FUNC1(writer.reused, *oid);
	if (hash_pos >= FUNC0(writer.reused))
		return NULL;

	return FUNC2(writer.reused, hash_pos);
}