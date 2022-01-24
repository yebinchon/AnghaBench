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
struct ata_queued_cmd {int err_mask; int /*<<< orphan*/  tag; struct ata_port* ap; } ;
struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ error_handler; } ;

/* Variables and functions */
 int AC_ERR_HSM ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 
 struct ata_queued_cmd* FUNC2 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ata_queued_cmd *qc, int in_wq)
{
	struct ata_port *ap = qc->ap;

	if (ap->ops->error_handler) {
		if (in_wq) {
			/* EH might have kicked in while host lock is
			 * released.
			 */
			qc = FUNC2(ap, qc->tag);
			if (qc) {
				if (FUNC4(!(qc->err_mask & AC_ERR_HSM))) {
					FUNC3(ap);
					FUNC1(qc);
				} else
					FUNC0(ap);
			}
		} else {
			if (FUNC4(!(qc->err_mask & AC_ERR_HSM)))
				FUNC1(qc);
			else
				FUNC0(ap);
		}
	} else {
		if (in_wq) {
			FUNC3(ap);
			FUNC1(qc);
		} else
			FUNC1(qc);
	}
}