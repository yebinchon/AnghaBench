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
struct tpm_space {int /*<<< orphan*/ * session_tbl; int /*<<< orphan*/  session_buf; int /*<<< orphan*/ * context_tbl; int /*<<< orphan*/  context_buf; } ;
struct tpm_chip {struct tpm_space work_space; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*) ; 
 int FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip)
{
	struct tpm_space *space = &chip->work_space;
	unsigned int offset;
	int i;
	int rc;

	for (i = 0, offset = 0; i < FUNC0(space->context_tbl); i++) {
		if (!(space->context_tbl[i] && ~space->context_tbl[i]))
			continue;

		rc = FUNC3(chip, space->context_tbl[i],
				       space->context_buf, PAGE_SIZE,
				       &offset);
		if (rc == -ENOENT) {
			space->context_tbl[i] = 0;
			continue;
		} else if (rc)
			return rc;

		FUNC1(chip, space->context_tbl[i]);
		space->context_tbl[i] = ~0;
	}

	for (i = 0, offset = 0; i < FUNC0(space->session_tbl); i++) {
		if (!space->session_tbl[i])
			continue;

		rc = FUNC3(chip, space->session_tbl[i],
				       space->session_buf, PAGE_SIZE,
				       &offset);

		if (rc == -ENOENT) {
			/* handle error saving session, just forget it */
			space->session_tbl[i] = 0;
		} else if (rc < 0) {
			FUNC2(chip);
			return rc;
		}
	}

	return 0;
}