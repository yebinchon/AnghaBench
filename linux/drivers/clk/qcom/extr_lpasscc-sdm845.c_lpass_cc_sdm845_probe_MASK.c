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
struct qcom_cc_desc {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 struct qcom_cc_desc lpass_cc_sdm845_desc ; 
 struct qcom_cc_desc lpass_qdsp6ss_sdm845_desc ; 
 TYPE_1__ lpass_regmap_config ; 
 int FUNC0 (struct platform_device*,int,struct qcom_cc_desc const*) ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev)
{
	const struct qcom_cc_desc *desc;
	int ret;

	lpass_regmap_config.name = "cc";
	desc = &lpass_cc_sdm845_desc;

	ret = FUNC0(pdev, 0, desc);
	if (ret)
		return ret;

	lpass_regmap_config.name = "qdsp6ss";
	desc = &lpass_qdsp6ss_sdm845_desc;

	return FUNC0(pdev, 1, desc);
}