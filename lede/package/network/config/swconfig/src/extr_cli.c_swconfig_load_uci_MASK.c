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
struct uci_package {int dummy; } ;
struct uci_context {int dummy; } ;
struct switch_dev {char* dev_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (struct switch_dev*,struct uci_package*) ; 
 struct uci_context* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct uci_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct uci_context*,char const*,struct uci_package**) ; 
 int /*<<< orphan*/  FUNC6 (struct uci_context*,char*) ; 

__attribute__((used)) static void
FUNC7(struct switch_dev *dev, const char *name)
{
	struct uci_context *ctx;
	struct uci_package *p = NULL;
	int ret = -1;

	ctx = FUNC3();
	if (!ctx)
		return;

	FUNC5(ctx, name, &p);
	if (!p) {
		FUNC6(ctx, "Failed to load config file: ");
		goto out;
	}

	ret = FUNC2(dev, p);
	if (ret < 0)
		FUNC1(stderr, "Failed to apply configuration for switch '%s'\n", dev->dev_name);

out:
	FUNC4(ctx);
	FUNC0(ret);
}