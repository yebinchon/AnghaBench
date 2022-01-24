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
struct ata_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 
 scalar_t__ FUNC5 (struct ata_port*) ; 

int FUNC6(struct ata_port *ap)
{
	FUNC3(ap);

	FUNC2(ap);
	FUNC4(ap);

	if (FUNC5(ap))
		FUNC0(ap);
	else
		FUNC1(ap);

	return 0;
}