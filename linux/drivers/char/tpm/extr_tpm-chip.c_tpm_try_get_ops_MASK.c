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
struct tpm_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  ops_sem; int /*<<< orphan*/  tpm_mutex; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct tpm_chip *chip)
{
	int rc = -EIO;

	FUNC1(&chip->dev);

	FUNC0(&chip->ops_sem);
	if (!chip->ops)
		goto out_ops;

	FUNC2(&chip->tpm_mutex);
	rc = FUNC5(chip);
	if (rc)
		goto out_lock;

	return 0;
out_lock:
	FUNC3(&chip->tpm_mutex);
out_ops:
	FUNC6(&chip->ops_sem);
	FUNC4(&chip->dev);
	return rc;
}