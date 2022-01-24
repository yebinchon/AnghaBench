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
struct vtpm_shared_page {size_t length; scalar_t__ state; } ;
struct tpm_private {int /*<<< orphan*/  read_queue; struct vtpm_shared_page* shr; } ;
struct tpm_chip {int /*<<< orphan*/  timeout_c; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ECANCELED ; 
 int EIO ; 
 int ETIME ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ VTPM_STATE_IDLE ; 
 int /*<<< orphan*/  VTPM_STATUS_RESULT ; 
 struct tpm_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 unsigned int FUNC2 (struct vtpm_shared_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 scalar_t__ FUNC4 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct tpm_private *priv = FUNC0(&chip->dev);
	struct vtpm_shared_page *shr = priv->shr;
	unsigned int offset = FUNC2(shr);
	size_t length = shr->length;

	if (shr->state == VTPM_STATE_IDLE)
		return -ECANCELED;

	/* In theory the wait at the end of _send makes this one unnecessary */
	if (FUNC4(chip, VTPM_STATUS_RESULT, chip->timeout_c,
			&priv->read_queue, true) < 0) {
		FUNC3(chip);
		return -ETIME;
	}

	if (offset > PAGE_SIZE)
		return -EIO;

	if (offset + length > PAGE_SIZE)
		length = PAGE_SIZE - offset;

	if (length > count)
		length = count;

	FUNC1(buf, offset + (u8 *)shr, length);

	return length;
}