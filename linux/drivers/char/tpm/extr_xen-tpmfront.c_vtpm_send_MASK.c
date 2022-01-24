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
typedef  int /*<<< orphan*/  u32 ;
struct vtpm_shared_page {size_t length; int /*<<< orphan*/  state; } ;
struct tpm_private {int /*<<< orphan*/  read_queue; int /*<<< orphan*/  evtchn; struct vtpm_shared_page* shr; } ;
struct tpm_header {int /*<<< orphan*/  ordinal; } ;
struct tpm_chip {unsigned long timeout_c; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIME ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  VTPM_STATE_SUBMIT ; 
 int /*<<< orphan*/  VTPM_STATUS_IDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tpm_private* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct vtpm_shared_page*) ; 
 unsigned long FUNC6 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_chip*) ; 
 scalar_t__ FUNC8 (struct tpm_chip*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct tpm_private *priv = FUNC2(&chip->dev);
	struct vtpm_shared_page *shr = priv->shr;
	unsigned int offset = FUNC5(shr);

	u32 ordinal;
	unsigned long duration;

	if (offset > PAGE_SIZE)
		return -EINVAL;

	if (offset + count > PAGE_SIZE)
		return -EINVAL;

	/* Wait for completion of any existing command or cancellation */
	if (FUNC8(chip, VTPM_STATUS_IDLE, chip->timeout_c,
			&priv->read_queue, true) < 0) {
		FUNC7(chip);
		return -ETIME;
	}

	FUNC3(offset + (u8 *)shr, buf, count);
	shr->length = count;
	FUNC0();
	shr->state = VTPM_STATE_SUBMIT;
	FUNC9();
	FUNC4(priv->evtchn);

	ordinal = FUNC1(((struct tpm_header *)buf)->ordinal);
	duration = FUNC6(chip, ordinal);

	if (FUNC8(chip, VTPM_STATUS_IDLE, duration,
			&priv->read_queue, true) < 0) {
		/* got a signal or timeout, try to cancel */
		FUNC7(chip);
		return -ETIME;
	}

	return 0;
}