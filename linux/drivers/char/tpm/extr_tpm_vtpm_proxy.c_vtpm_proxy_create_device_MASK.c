#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vtpm_proxy_new_dev {int flags; int fd; int /*<<< orphan*/  tpm_num; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct proxy_dev {int flags; TYPE_2__* chip; } ;
struct file {int flags; TYPE_2__* chip; } ;
struct TYPE_3__ {int /*<<< orphan*/  devt; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_num; TYPE_1__ dev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct proxy_dev* FUNC0 (struct proxy_dev*) ; 
 struct proxy_dev* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct proxy_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC5 (struct proxy_dev*) ; 
 int /*<<< orphan*/  TPM_CHIP_FLAG_TPM2 ; 
 int VTPM_PROXY_FLAGS_ALL ; 
 int VTPM_PROXY_FLAG_TPM2 ; 
 struct proxy_dev* FUNC6 (char*,int /*<<< orphan*/ *,struct proxy_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct proxy_dev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct proxy_dev*) ; 
 int /*<<< orphan*/  vtpm_proxy_fops ; 
 int /*<<< orphan*/  FUNC11 (struct proxy_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct proxy_dev*) ; 

__attribute__((used)) static struct file *FUNC13(
				 struct vtpm_proxy_new_dev *vtpm_new_dev)
{
	struct proxy_dev *proxy_dev;
	int rc, fd;
	struct file *file;

	if (vtpm_new_dev->flags & ~VTPM_PROXY_FLAGS_ALL)
		return FUNC1(-EOPNOTSUPP);

	proxy_dev = FUNC9();
	if (FUNC2(proxy_dev))
		return FUNC0(proxy_dev);

	proxy_dev->flags = vtpm_new_dev->flags;

	/* setup an anonymous file for the server-side */
	fd = FUNC7(O_RDWR);
	if (fd < 0) {
		rc = fd;
		goto err_delete_proxy_dev;
	}

	file = FUNC6("[vtpms]", &vtpm_proxy_fops, proxy_dev,
				  O_RDWR);
	if (FUNC2(file)) {
		rc = FUNC5(file);
		goto err_put_unused_fd;
	}

	/* from now on we can unwind with put_unused_fd() + fput() */
	/* simulate an open() on the server side */
	FUNC11(file);

	if (proxy_dev->flags & VTPM_PROXY_FLAG_TPM2)
		proxy_dev->chip->flags |= TPM_CHIP_FLAG_TPM2;

	FUNC12(proxy_dev);

	vtpm_new_dev->fd = fd;
	vtpm_new_dev->major = FUNC3(proxy_dev->chip->dev.devt);
	vtpm_new_dev->minor = FUNC4(proxy_dev->chip->dev.devt);
	vtpm_new_dev->tpm_num = proxy_dev->chip->dev_num;

	return file;

err_put_unused_fd:
	FUNC8(fd);

err_delete_proxy_dev:
	FUNC10(proxy_dev);

	return FUNC1(rc);
}