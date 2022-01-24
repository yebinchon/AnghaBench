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
struct device_node {int dummy; } ;
typedef  enum l1d_flush_type { ____Placeholder_l1d_flush_type } l1d_flush_type ;

/* Variables and functions */
 int L1D_FLUSH_FALLBACK ; 
 int L1D_FLUSH_MTTRIG ; 
 int L1D_FLUSH_ORI ; 
 int /*<<< orphan*/  SEC_FTR_FAVOUR_SECURITY ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_HV ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_ORI30 ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_PR ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_TRIG2 ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct device_node *np, *fw_features;
	enum l1d_flush_type type;
	bool enable;

	/* Default to fallback in case fw-features are not available */
	type = L1D_FLUSH_FALLBACK;

	np = FUNC1(NULL, "ibm,opal");
	fw_features = FUNC2(np, "fw-features");
	FUNC3(np);

	if (fw_features) {
		FUNC0(fw_features);
		FUNC3(fw_features);

		if (FUNC4(SEC_FTR_L1D_FLUSH_TRIG2))
			type = L1D_FLUSH_MTTRIG;

		if (FUNC4(SEC_FTR_L1D_FLUSH_ORI30))
			type = L1D_FLUSH_ORI;
	}

	enable = FUNC4(SEC_FTR_FAVOUR_SECURITY) && \
		 (FUNC4(SEC_FTR_L1D_FLUSH_PR)   || \
		  FUNC4(SEC_FTR_L1D_FLUSH_HV));

	FUNC6(type, enable);
	FUNC5();
}