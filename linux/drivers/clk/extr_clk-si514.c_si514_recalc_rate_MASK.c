#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk_si514_muldiv {int dummy; } ;
struct clk_si514 {TYPE_1__* i2c_client; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC1 (struct clk_si514_muldiv*) ; 
 int FUNC2 (struct clk_si514*,struct clk_si514_muldiv*) ; 
 struct clk_si514* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct clk_si514 *data = FUNC3(hw);
	struct clk_si514_muldiv settings;
	int err;

	err = FUNC2(data, &settings);
	if (err) {
		FUNC0(&data->i2c_client->dev, "unable to retrieve settings\n");
		return 0;
	}

	return FUNC1(&settings);
}