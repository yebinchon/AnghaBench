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
struct ata_taskfile {int dummy; } ;
struct ata_port {int dummy; } ;
struct ata_link {int /*<<< orphan*/  device; struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  PRB_CTRL_SRST ; 
 unsigned int FUNC1 (struct ata_taskfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_link*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ata_taskfile*) ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int FUNC5 (struct ata_link*) ; 
 int FUNC6 (struct ata_port*,int,struct ata_taskfile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC7 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_port*,int /*<<< orphan*/ ,struct ata_taskfile*) ; 
 scalar_t__ FUNC9 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct ata_link *link, unsigned int *class,
			   unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	int pmp = FUNC5(link);
	unsigned long timeout_msec = 0;
	struct ata_taskfile tf;
	const char *reason;
	int rc;

	FUNC0("ENTER\n");

	/* put the port into known state */
	if (FUNC7(ap)) {
		reason = "port not ready";
		goto err;
	}

	/* do SRST */
	if (FUNC9(deadline, jiffies))
		timeout_msec = FUNC4(deadline - jiffies);

	FUNC3(link->device, &tf);	/* doesn't really matter */
	rc = FUNC6(ap, pmp, &tf, 0, PRB_CTRL_SRST,
				   timeout_msec);
	if (rc == -EBUSY) {
		reason = "timeout";
		goto err;
	} else if (rc) {
		reason = "SRST command error";
		goto err;
	}

	FUNC8(ap, 0, &tf);
	*class = FUNC1(&tf);

	FUNC0("EXIT, class=%u\n", *class);
	return 0;

 err:
	FUNC2(link, "softreset failed (%s)\n", reason);
	return -EIO;
}