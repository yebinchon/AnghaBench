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
typedef  int u16 ;
struct TYPE_2__ {int revision; } ;
struct bcma_bus {TYPE_1__ sprom; } ;

/* Variables and functions */
 int ENOENT ; 
 int const SSB_SPROM_REVISION_REV ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_bus*,char*,int) ; 
 int FUNC1 (int const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct bcma_bus *bus, const u16 *sprom,
			    size_t words)
{
	u16 revision;
	int err;

	err = FUNC1(sprom, words);
	if (err)
		return err;

	revision = sprom[words - 1] & SSB_SPROM_REVISION_REV;
	if (revision != 8 && revision != 9 && revision != 10) {
		FUNC2("Unsupported SPROM revision: %d\n", revision);
		return -ENOENT;
	}

	bus->sprom.revision = revision;
	FUNC0(bus, "Found SPROM revision %d\n", revision);

	return 0;
}