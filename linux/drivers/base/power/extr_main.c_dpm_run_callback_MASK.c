#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ pm_message_t ;
typedef  int (* pm_callback_t ) (struct device*) ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int (*) (struct device*),int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int (*) (struct device*)) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,TYPE_1__,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int (*) (struct device*),int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(pm_callback_t cb, struct device *dev,
			    pm_message_t state, const char *info)
{
	ktime_t calltime;
	int error;

	if (!cb)
		return 0;

	calltime = FUNC1(dev, cb);

	FUNC2(dev, state, info);
	FUNC5(dev, info, state.event);
	error = cb(dev);
	FUNC4(dev, error);
	FUNC3(cb, error);

	FUNC0(dev, calltime, cb, error);

	return error;
}