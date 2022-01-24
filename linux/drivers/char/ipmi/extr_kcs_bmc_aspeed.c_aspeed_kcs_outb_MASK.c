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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct kcs_bmc {int dummy; } ;
struct aspeed_kcs_bmc {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct aspeed_kcs_bmc* FUNC1 (struct kcs_bmc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kcs_bmc *kcs_bmc, u32 reg, u8 data)
{
	struct aspeed_kcs_bmc *priv = FUNC1(kcs_bmc);
	int rc;

	rc = FUNC2(priv->map, reg, data);
	FUNC0(rc != 0, "regmap_write() failed: %d\n", rc);
}