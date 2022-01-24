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
typedef  int /*<<< orphan*/  uint32_t ;
struct object_id {int dummy; } ;
struct object_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  to_pack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 struct object_entry* FUNC3 (int /*<<< orphan*/ ,struct object_id const*) ; 
 TYPE_1__ writer ; 

__attribute__((used)) static uint32_t FUNC4(const struct object_id *oid)
{
	struct object_entry *entry = FUNC3(writer.to_pack, oid);

	if (!entry) {
		FUNC0("Failed to write bitmap index. Packfile doesn't have full closure "
			"(object %s is missing)", FUNC2(oid));
	}

	return FUNC1(writer.to_pack, entry);
}