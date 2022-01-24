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
struct strbuf {int dummy; } ;
struct index_entry_offset_table {int nr; TYPE_1__* entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEOT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct strbuf *sb, struct index_entry_offset_table *ieot)
{
	uint32_t buffer;
	int i;

	/* version */
	FUNC0(&buffer, IEOT_VERSION);
	FUNC1(sb, &buffer, sizeof(uint32_t));

	/* ieot */
	for (i = 0; i < ieot->nr; i++) {

		/* offset */
		FUNC0(&buffer, ieot->entries[i].offset);
		FUNC1(sb, &buffer, sizeof(uint32_t));

		/* count */
		FUNC0(&buffer, ieot->entries[i].nr);
		FUNC1(sb, &buffer, sizeof(uint32_t));
	}
}