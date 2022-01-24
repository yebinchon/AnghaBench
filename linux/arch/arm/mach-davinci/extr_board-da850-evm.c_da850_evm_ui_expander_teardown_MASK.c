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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 unsigned int DA850_EVM_UI_EXP_SEL_A ; 
 unsigned int DA850_EVM_UI_EXP_SEL_B ; 
 unsigned int DA850_EVM_UI_EXP_SEL_C ; 
 int /*<<< orphan*/  da850_evm_ui_keys_device ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
					unsigned gpio, unsigned ngpio, void *c)
{
	FUNC2(&da850_evm_ui_keys_device);

	/* deselect all functionalities */
	FUNC1(gpio + DA850_EVM_UI_EXP_SEL_C, 1);
	FUNC1(gpio + DA850_EVM_UI_EXP_SEL_B, 1);
	FUNC1(gpio + DA850_EVM_UI_EXP_SEL_A, 1);

	FUNC0(gpio + DA850_EVM_UI_EXP_SEL_C);
	FUNC0(gpio + DA850_EVM_UI_EXP_SEL_B);
	FUNC0(gpio + DA850_EVM_UI_EXP_SEL_A);

	return 0;
}