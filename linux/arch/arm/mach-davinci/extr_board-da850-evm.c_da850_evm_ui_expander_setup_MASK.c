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
 size_t DA850_EVM_UI_EXP_SEL_A ; 
 size_t DA850_EVM_UI_EXP_SEL_B ; 
 size_t DA850_EVM_UI_EXP_SEL_C ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * da850_evm_ui_exp ; 
 int /*<<< orphan*/  da850_evm_ui_keys_device ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client, unsigned gpio,
						unsigned ngpio, void *c)
{
	int sel_a, sel_b, sel_c, ret;

	sel_a = gpio + DA850_EVM_UI_EXP_SEL_A;
	sel_b = gpio + DA850_EVM_UI_EXP_SEL_B;
	sel_c = gpio + DA850_EVM_UI_EXP_SEL_C;

	ret = FUNC6(sel_a, da850_evm_ui_exp[DA850_EVM_UI_EXP_SEL_A]);
	if (ret) {
		FUNC9("Cannot open UI expander pin %d\n", sel_a);
		goto exp_setup_sela_fail;
	}

	ret = FUNC6(sel_b, da850_evm_ui_exp[DA850_EVM_UI_EXP_SEL_B]);
	if (ret) {
		FUNC9("Cannot open UI expander pin %d\n", sel_b);
		goto exp_setup_selb_fail;
	}

	ret = FUNC6(sel_c, da850_evm_ui_exp[DA850_EVM_UI_EXP_SEL_C]);
	if (ret) {
		FUNC9("Cannot open UI expander pin %d\n", sel_c);
		goto exp_setup_selc_fail;
	}

	/* deselect all functionalities */
	FUNC4(sel_a, 1);
	FUNC4(sel_b, 1);
	FUNC4(sel_c, 1);

	FUNC3(gpio);
	ret = FUNC7(&da850_evm_ui_keys_device);
	if (ret) {
		FUNC9("Could not register UI GPIO expander push-buttons");
		goto exp_setup_keys_fail;
	}

	FUNC8("DA850/OMAP-L138 EVM UI card detected\n");

	FUNC1();

	FUNC0(sel_a);

	FUNC2(sel_c);

	return 0;

exp_setup_keys_fail:
	FUNC5(sel_c);
exp_setup_selc_fail:
	FUNC5(sel_b);
exp_setup_selb_fail:
	FUNC5(sel_a);
exp_setup_sela_fail:
	return ret;
}