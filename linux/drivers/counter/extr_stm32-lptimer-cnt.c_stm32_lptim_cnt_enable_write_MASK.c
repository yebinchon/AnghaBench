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
struct stm32_lptim_cnt {int dummy; } ;
struct counter_device {struct stm32_lptim_cnt* priv; } ;
struct counter_count {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (char const*,int*) ; 
 int FUNC1 (struct stm32_lptim_cnt* const) ; 
 int FUNC2 (struct stm32_lptim_cnt* const,int) ; 
 int FUNC3 (struct stm32_lptim_cnt* const,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct counter_device *counter,
					    struct counter_count *count,
					    void *private,
					    const char *buf, size_t len)
{
	struct stm32_lptim_cnt *const priv = counter->priv;
	bool enable;
	int ret;

	ret = FUNC0(buf, &enable);
	if (ret)
		return ret;

	/* Check nobody uses the timer, or already disabled/enabled */
	ret = FUNC1(priv);
	if ((ret < 0) || (!ret && !enable))
		return ret;
	if (enable && ret)
		return -EBUSY;

	ret = FUNC3(priv, enable);
	if (ret)
		return ret;

	ret = FUNC2(priv, enable);
	if (ret)
		return ret;

	return len;
}