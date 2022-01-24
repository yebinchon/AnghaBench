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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct proxy_dev {struct tpm_chip* chip; int /*<<< orphan*/  work; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct proxy_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tpm_chip*) ; 
 int FUNC3 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct proxy_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct proxy_dev*) ; 
 struct proxy_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct tpm_chip* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vtpm_proxy_tpm_ops ; 
 int /*<<< orphan*/  vtpm_proxy_work ; 

__attribute__((used)) static struct proxy_dev *FUNC10(void)
{
	struct proxy_dev *proxy_dev;
	struct tpm_chip *chip;
	int err;

	proxy_dev = FUNC7(sizeof(*proxy_dev), GFP_KERNEL);
	if (proxy_dev == NULL)
		return FUNC0(-ENOMEM);

	FUNC5(&proxy_dev->wq);
	FUNC8(&proxy_dev->buf_lock);
	FUNC1(&proxy_dev->work, vtpm_proxy_work);

	chip = FUNC9(NULL, &vtpm_proxy_tpm_ops);
	if (FUNC2(chip)) {
		err = FUNC3(chip);
		goto err_proxy_dev_free;
	}
	FUNC4(&chip->dev, proxy_dev);

	proxy_dev->chip = chip;

	return proxy_dev;

err_proxy_dev_free:
	FUNC6(proxy_dev);

	return FUNC0(err);
}