#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tee_ioctl_open_session_arg {scalar_t__ ret; int /*<<< orphan*/  session; scalar_t__ num_params; int /*<<< orphan*/  clnt_login; int /*<<< orphan*/  uuid; } ;
struct TYPE_4__ {int /*<<< orphan*/  b; } ;
struct TYPE_5__ {TYPE_1__ uuid; } ;
struct tee_client_device {TYPE_2__ id; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  sess_arg ;
struct TYPE_6__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  session_id; struct device* dev; int /*<<< orphan*/  optee_rng; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEE_IOCTL_LOGIN_PUBLIC ; 
 int /*<<< orphan*/  TEE_IOCTL_UUID_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tee_ioctl_open_session_arg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optee_ctx_match ; 
 TYPE_3__ pvt_data ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct tee_ioctl_open_session_arg*,int /*<<< orphan*/ *) ; 
 struct tee_client_device* FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct tee_client_device *rng_device = FUNC10(dev);
	int ret = 0, err = -ENODEV;
	struct tee_ioctl_open_session_arg sess_arg;

	FUNC5(&sess_arg, 0, sizeof(sess_arg));

	/* Open context with TEE driver */
	pvt_data.ctx = FUNC8(NULL, optee_ctx_match, NULL,
					       NULL);
	if (FUNC0(pvt_data.ctx))
		return -ENODEV;

	/* Open session with hwrng Trusted App */
	FUNC4(sess_arg.uuid, rng_device->id.uuid.b, TEE_IOCTL_UUID_LEN);
	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
	sess_arg.num_params = 0;

	ret = FUNC9(pvt_data.ctx, &sess_arg, NULL);
	if ((ret < 0) || (sess_arg.ret != 0)) {
		FUNC1(dev, "tee_client_open_session failed, err: %x\n",
			sess_arg.ret);
		err = -EINVAL;
		goto out_ctx;
	}
	pvt_data.session_id = sess_arg.session;

	err = FUNC2(dev);
	if (err)
		goto out_sess;

	err = FUNC3(&pvt_data.optee_rng);
	if (err) {
		FUNC1(dev, "hwrng registration failed (%d)\n", err);
		goto out_sess;
	}

	pvt_data.dev = dev;

	return 0;

out_sess:
	FUNC7(pvt_data.ctx, pvt_data.session_id);
out_ctx:
	FUNC6(pvt_data.ctx);

	return err;
}