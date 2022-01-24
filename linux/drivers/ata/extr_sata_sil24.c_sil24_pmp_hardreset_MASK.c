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
struct ata_link {int /*<<< orphan*/  ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_link*,char*) ; 
 int FUNC1 (struct ata_link*,unsigned int*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_link *link, unsigned int *class,
			       unsigned long deadline)
{
	int rc;

	rc = FUNC2(link->ap);
	if (rc) {
		FUNC0(link, "hardreset failed (port not ready)\n");
		return rc;
	}

	return FUNC1(link, class, deadline);
}