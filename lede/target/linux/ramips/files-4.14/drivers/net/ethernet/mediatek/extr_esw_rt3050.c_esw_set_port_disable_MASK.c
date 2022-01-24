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
struct rt305x_esw {int dummy; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_FULLDPLX ; 
 int BMCR_PDOWN ; 
 int BMCR_SPEED100 ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int RT305X_ESW_NUM_LEDS ; 
 unsigned int RT305X_ESW_POC0_DIS_PORT_M ; 
 unsigned int RT305X_ESW_POC0_DIS_PORT_S ; 
 int /*<<< orphan*/  RT305X_ESW_REG_POC0 ; 
 unsigned int FUNC0 (struct rt305x_esw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt305x_esw*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt305x_esw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct rt305x_esw *esw, unsigned disable_mask)
{
	unsigned old_mask;
	unsigned enable_mask;
	unsigned changed;
	int i;

	old_mask = FUNC0(esw);
	changed = old_mask ^ disable_mask;
	enable_mask = old_mask & disable_mask;

	/* enable before writing to MII */
	FUNC1(esw, RT305X_ESW_REG_POC0,
		       (RT305X_ESW_POC0_DIS_PORT_M <<
			RT305X_ESW_POC0_DIS_PORT_S),
		       enable_mask << RT305X_ESW_POC0_DIS_PORT_S);

	for (i = 0; i < RT305X_ESW_NUM_LEDS; i++) {
		if (!(changed & (1 << i)))
			continue;
		if (disable_mask & (1 << i)) {
			/* disable */
			FUNC2(esw, i, MII_BMCR,
					 BMCR_PDOWN);
		} else {
			/* enable */
			FUNC2(esw, i, MII_BMCR,
					 BMCR_FULLDPLX |
					 BMCR_ANENABLE |
					 BMCR_ANRESTART |
					 BMCR_SPEED100);
		}
	}

	/* disable after writing to MII */
	FUNC1(esw, RT305X_ESW_REG_POC0,
		       (RT305X_ESW_POC0_DIS_PORT_M <<
			RT305X_ESW_POC0_DIS_PORT_S),
		       disable_mask << RT305X_ESW_POC0_DIS_PORT_S);
}