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
struct tpm_chip {int dummy; } ;
struct tpm_buf {void* data; } ;

/* Variables and functions */
 int ENODEV ; 
 struct tpm_chip* FUNC0 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*) ; 
 int FUNC2 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct tpm_chip *chip, void *cmd, size_t buflen)
{
	struct tpm_buf buf;
	int rc;

	chip = FUNC0(chip);
	if (!chip)
		return -ENODEV;

	buf.data = cmd;
	rc = FUNC2(chip, &buf, 0, "attempting to a send a command");

	FUNC1(chip);
	return rc;
}