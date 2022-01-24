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
typedef  int /*<<< orphan*/  u8 ;
struct partition {int dummy; } ;
struct parsed_partitions {int dummy; } ;
typedef  scalar_t__ __le16 ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LDM_PARTITION ; 
 int /*<<< orphan*/  MSDOS_LABEL_MAGIC ; 
 scalar_t__ FUNC1 (struct partition*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct parsed_partitions *state)
{
	Sector sect;
	u8 *data;
	struct partition *p;
	int i;
	bool result = false;

	FUNC0(!state);

	data = FUNC6(state, 0, &sect);
	if (!data) {
		FUNC4 ("Disk read failed.");
		return false;
	}

	if (*(__le16*) (data + 0x01FE) != FUNC2 (MSDOS_LABEL_MAGIC))
		goto out;

	p = (struct partition*)(data + 0x01BE);
	for (i = 0; i < 4; i++, p++)
		if (FUNC1 (p) == LDM_PARTITION) {
			result = true;
			break;
		}

	if (result)
		FUNC3 ("Found W2K dynamic disk partition type.");

out:
	FUNC5 (sect);
	return result;
}