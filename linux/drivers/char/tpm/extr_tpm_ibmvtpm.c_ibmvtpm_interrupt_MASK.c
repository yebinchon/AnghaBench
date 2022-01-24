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
struct ibmvtpm_dev {int dummy; } ;
struct ibmvtpm_crq {scalar_t__ valid; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct ibmvtpm_crq* FUNC0 (struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvtpm_crq*,struct ibmvtpm_dev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *vtpm_instance)
{
	struct ibmvtpm_dev *ibmvtpm = (struct ibmvtpm_dev *) vtpm_instance;
	struct ibmvtpm_crq *crq;

	/* while loop is needed for initial setup (get version and
	 * get rtce_size). There should be only one tpm request at any
	 * given time.
	 */
	while ((crq = FUNC0(ibmvtpm)) != NULL) {
		FUNC1(crq, ibmvtpm);
		crq->valid = 0;
		FUNC2();
	}

	return IRQ_HANDLED;
}