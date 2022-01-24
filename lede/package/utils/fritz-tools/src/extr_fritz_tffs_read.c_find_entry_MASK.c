#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct tffs_entry_header {int dummy; } ;
struct tffs_entry {TYPE_1__* header; } ;
struct TYPE_3__ {scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ TFFS_ID_END ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,struct tffs_entry*) ; 
 scalar_t__ tffs_size ; 

__attribute__((used)) static int FUNC4(uint8_t *buffer, uint16_t id, struct tffs_entry *entry)
{
	uint32_t pos = 0;

	do {
		FUNC3(buffer, pos, entry);

		if (FUNC0(entry->header) == id)
			return 1;

		pos += sizeof(struct tffs_entry_header);
		pos += FUNC2(FUNC1(entry->header));
	} while (pos < tffs_size && entry->header->id != TFFS_ID_END);

	return 0;
}