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
struct tpm_space {int /*<<< orphan*/  session_buf; int /*<<< orphan*/  context_buf; } ;
struct tpm_chip {int /*<<< orphan*/  tpm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*,struct tpm_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_chip*) ; 

void FUNC6(struct tpm_chip *chip, struct tpm_space *space)
{
	FUNC1(&chip->tpm_mutex);
	if (!FUNC4(chip)) {
		FUNC3(chip, space);
		FUNC5(chip);
	}
	FUNC2(&chip->tpm_mutex);
	FUNC0(space->context_buf);
	FUNC0(space->session_buf);
}