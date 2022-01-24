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
typedef  int /*<<< orphan*/  u8 ;
struct tpm_space {int /*<<< orphan*/ * session_buf; int /*<<< orphan*/ * context_buf; int /*<<< orphan*/  session_tbl; int /*<<< orphan*/  context_tbl; } ;
struct TYPE_2__ {int /*<<< orphan*/ * session_buf; int /*<<< orphan*/ * context_buf; int /*<<< orphan*/  session_tbl; int /*<<< orphan*/  context_tbl; } ;
struct tpm_chip {int last_cc; TYPE_1__ work_space; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*) ; 
 int FUNC2 (struct tpm_chip*) ; 
 int FUNC3 (struct tpm_chip*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tpm_chip*,struct tpm_space*,int /*<<< orphan*/ *,size_t) ; 

int FUNC5(struct tpm_chip *chip, struct tpm_space *space, u8 *cmd,
		       size_t cmdsiz)
{
	int rc;
	int cc;

	if (!space)
		return 0;

	cc = FUNC4(chip, space, cmd, cmdsiz);
	if (cc < 0)
		return cc;

	FUNC0(&chip->work_space.context_tbl, &space->context_tbl,
	       sizeof(space->context_tbl));
	FUNC0(&chip->work_space.session_tbl, &space->session_tbl,
	       sizeof(space->session_tbl));
	FUNC0(chip->work_space.context_buf, space->context_buf, PAGE_SIZE);
	FUNC0(chip->work_space.session_buf, space->session_buf, PAGE_SIZE);

	rc = FUNC2(chip);
	if (rc) {
		FUNC1(chip);
		return rc;
	}

	rc = FUNC3(chip, cc, cmd);
	if (rc) {
		FUNC1(chip);
		return rc;
	}

	chip->last_cc = cc;
	return 0;
}