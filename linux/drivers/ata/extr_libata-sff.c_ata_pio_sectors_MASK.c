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
struct ata_queued_cmd {int nbytes; int curbytes; int sect_size; int /*<<< orphan*/  ap; TYPE_1__* dev; int /*<<< orphan*/  tf; } ;
struct TYPE_2__ {scalar_t__ multi_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ata_queued_cmd *qc)
{
	if (FUNC3(&qc->tf)) {
		/* READ/WRITE MULTIPLE */
		unsigned int nsect;

		FUNC0(qc->dev->multi_count == 0);

		nsect = FUNC4((qc->nbytes - qc->curbytes) / qc->sect_size,
			    qc->dev->multi_count);
		while (nsect--)
			FUNC1(qc);
	} else
		FUNC1(qc);

	FUNC2(qc->ap); /* flush */
}