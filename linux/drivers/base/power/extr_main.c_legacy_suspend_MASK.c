#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ pm_message_t ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int (*) (struct device*,TYPE_1__),int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int (*) (struct device*,TYPE_1__)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct device*,TYPE_1__),int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, pm_message_t state,
			  int (*cb)(struct device *dev, pm_message_t state),
			  const char *info)
{
	int error;
	ktime_t calltime;

	calltime = FUNC1(dev, cb);

	FUNC4(dev, info, state.event);
	error = cb(dev, state);
	FUNC3(dev, error);
	FUNC2(cb, error);

	FUNC0(dev, calltime, cb, error);

	return error;
}