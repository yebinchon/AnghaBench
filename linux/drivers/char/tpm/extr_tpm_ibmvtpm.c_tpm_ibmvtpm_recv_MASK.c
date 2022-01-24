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
typedef  size_t u16 ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct ibmvtpm_dev {size_t res_len; int /*<<< orphan*/  rtce_lock; scalar_t__ rtce_buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  tpm_processing_cmd; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct ibmvtpm_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct ibmvtpm_dev *ibmvtpm = FUNC1(&chip->dev);
	u16 len;
	int sig;

	if (!ibmvtpm->rtce_buf) {
		FUNC0(ibmvtpm->dev, "ibmvtpm device is not ready\n");
		return 0;
	}

	sig = FUNC6(ibmvtpm->wq, !ibmvtpm->tpm_processing_cmd);
	if (sig)
		return -EINTR;

	len = ibmvtpm->res_len;

	if (count < len) {
		FUNC0(ibmvtpm->dev,
			"Invalid size in recv: count=%zd, crq_size=%d\n",
			count, len);
		return -EIO;
	}

	FUNC4(&ibmvtpm->rtce_lock);
	FUNC2((void *)buf, (void *)ibmvtpm->rtce_buf, len);
	FUNC3(ibmvtpm->rtce_buf, 0, len);
	ibmvtpm->res_len = 0;
	FUNC5(&ibmvtpm->rtce_lock);
	return len;
}