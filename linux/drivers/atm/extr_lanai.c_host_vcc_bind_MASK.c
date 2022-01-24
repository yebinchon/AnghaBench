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
typedef  size_t vci_t ;
struct lanai_vcc {size_t vci; int /*<<< orphan*/ * vbase; } ;
struct lanai_dev {struct lanai_vcc** vccs; int /*<<< orphan*/  conf1; int /*<<< orphan*/  nbound; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG1_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (struct lanai_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct lanai_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct lanai_dev*) ; 

__attribute__((used)) static inline void FUNC4(struct lanai_dev *lanai,
	struct lanai_vcc *lvcc, vci_t vci)
{
	if (lvcc->vbase != NULL)
		return;    /* We already were bound in the other direction */
	FUNC0("Binding vci %d\n", vci);
#ifdef USE_POWERDOWN
	if (lanai->nbound++ == 0) {
		DPRINTK("Coming out of powerdown\n");
		lanai->conf1 &= ~CONFIG1_POWERDOWN;
		conf1_write(lanai);
		conf2_write(lanai);
	}
#endif
	lvcc->vbase = FUNC1(lanai, vci);
	lanai->vccs[lvcc->vci = vci] = lvcc;
}