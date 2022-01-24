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
typedef  scalar_t__ u32 ;
struct tpm_space {int* context_tbl; int* session_tbl; int /*<<< orphan*/  session_buf; int /*<<< orphan*/  context_buf; } ;
struct tpm_chip {int /*<<< orphan*/  dev; struct tpm_space work_space; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EFAULT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 int FUNC4 (struct tpm_chip*,int /*<<< orphan*/ ,unsigned int*,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip)
{
	struct tpm_space *space = &chip->work_space;
	unsigned int offset;
	int i;
	int rc;

	for (i = 0, offset = 0; i < FUNC0(space->context_tbl); i++) {
		if (!space->context_tbl[i])
			continue;

		/* sanity check, should never happen */
		if (~space->context_tbl[i]) {
			FUNC1(&chip->dev, "context table is inconsistent");
			return -EFAULT;
		}

		rc = FUNC4(chip, space->context_buf, &offset,
				       &space->context_tbl[i]);
		if (rc)
			return rc;
	}

	for (i = 0, offset = 0; i < FUNC0(space->session_tbl); i++) {
		u32 handle;

		if (!space->session_tbl[i])
			continue;

		rc = FUNC4(chip, space->session_buf,
				       &offset, &handle);
		if (rc == -ENOENT) {
			/* load failed, just forget session */
			space->session_tbl[i] = 0;
		} else if (rc) {
			FUNC3(chip);
			return rc;
		}
		if (handle != space->session_tbl[i]) {
			FUNC2(&chip->dev, "session restored to wrong handle\n");
			FUNC3(chip);
			return -EFAULT;
		}
	}

	return 0;
}