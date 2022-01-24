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
struct module {int dummy; } ;
struct firmware_work {void (* cont ) (struct firmware const*,void*) ;int opt_flags; int /*<<< orphan*/  work; struct device* device; int /*<<< orphan*/  name; void* context; struct module* module; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int FW_OPT_NOWAIT ; 
 int FW_OPT_UEVENT ; 
 int FW_OPT_USERHELPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 struct firmware_work* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  request_firmware_work_func ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct module*) ; 

int
FUNC9(
	struct module *module, bool uevent,
	const char *name, struct device *device, gfp_t gfp, void *context,
	void (*cont)(const struct firmware *fw, void *context))
{
	struct firmware_work *fw_work;

	fw_work = FUNC6(sizeof(struct firmware_work), gfp);
	if (!fw_work)
		return -ENOMEM;

	fw_work->module = module;
	fw_work->name = FUNC5(name, gfp);
	if (!fw_work->name) {
		FUNC3(fw_work);
		return -ENOMEM;
	}
	fw_work->device = device;
	fw_work->context = context;
	fw_work->cont = cont;
	fw_work->opt_flags = FW_OPT_NOWAIT |
		(uevent ? FW_OPT_UEVENT : FW_OPT_USERHELPER);

	if (!uevent && FUNC1(device, name)) {
		FUNC4(fw_work->name);
		FUNC3(fw_work);
		return -EOPNOTSUPP;
	}

	if (!FUNC8(module)) {
		FUNC4(fw_work->name);
		FUNC3(fw_work);
		return -EFAULT;
	}

	FUNC2(fw_work->device);
	FUNC0(&fw_work->work, request_firmware_work_func);
	FUNC7(&fw_work->work);
	return 0;
}