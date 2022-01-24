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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct tpm_chip {int flags; TYPE_1__* ops; int /*<<< orphan*/  dev; } ;
struct st33zp24_dev {scalar_t__ intrs; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int (* status ) (struct tpm_chip*) ;} ;

/* Variables and functions */
 int ECANCELED ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int TPM_CHIP_FLAG_IRQ ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct st33zp24_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct st33zp24_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tpm_chip*) ; 
 int FUNC8 (struct tpm_chip*) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int FUNC11 (struct tpm_chip*,int,int,int*) ; 

__attribute__((used)) static int FUNC12(struct tpm_chip *chip, u8 mask, unsigned long timeout,
			wait_queue_head_t *queue, bool check_cancel)
{
	struct st33zp24_dev *tpm_dev = FUNC2(&chip->dev);
	unsigned long stop;
	int ret = 0;
	bool canceled = false;
	bool condition;
	u32 cur_intrs;
	u8 status;

	/* check current status */
	status = FUNC7(chip);
	if ((status & mask) == mask)
		return 0;

	stop = jiffies + timeout;

	if (chip->flags & TPM_CHIP_FLAG_IRQ) {
		cur_intrs = tpm_dev->intrs;
		FUNC0(tpm_dev);
		FUNC4(tpm_dev->irq);

		do {
			if (ret == -ERESTARTSYS && FUNC5(current))
				FUNC1(TIF_SIGPENDING);

			timeout = stop - jiffies;
			if ((long) timeout <= 0)
				return -1;

			ret = FUNC10(*queue,
						cur_intrs != tpm_dev->intrs,
						timeout);
			FUNC0(tpm_dev);
			condition = FUNC11(chip, mask,
						check_cancel, &canceled);
			if (ret >= 0 && condition) {
				if (canceled)
					return -ECANCELED;
				return 0;
			}
		} while (ret == -ERESTARTSYS && FUNC5(current));

		FUNC3(tpm_dev->irq);

	} else {
		do {
			FUNC6(TPM_TIMEOUT);
			status = chip->ops->status(chip);
			if ((status & mask) == mask)
				return 0;
		} while (FUNC9(jiffies, stop));
	}

	return -ETIME;
}