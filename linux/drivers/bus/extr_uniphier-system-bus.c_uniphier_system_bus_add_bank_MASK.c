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
typedef  int u64 ;
typedef  int u32 ;
struct uniphier_system_bus_priv {TYPE_1__* bank; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int base; int end; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int U32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct uniphier_system_bus_priv *priv,
					int bank, u32 addr, u64 paddr, u32 size)
{
	u64 end, mask;

	FUNC1(priv->dev,
		"range found: bank = %d, addr = %08x, paddr = %08llx, size = %08x\n",
		bank, addr, paddr, size);

	if (bank >= FUNC0(priv->bank)) {
		FUNC2(priv->dev, "unsupported bank number %d\n", bank);
		return -EINVAL;
	}

	if (priv->bank[bank].base || priv->bank[bank].end) {
		FUNC2(priv->dev,
			"range for bank %d has already been specified\n", bank);
		return -EINVAL;
	}

	if (paddr > U32_MAX) {
		FUNC2(priv->dev, "base address %llx is too high\n", paddr);
		return -EINVAL;
	}

	end = paddr + size;

	if (addr > paddr) {
		FUNC2(priv->dev,
			"base %08x cannot be mapped to %08llx of parent\n",
			addr, paddr);
		return -EINVAL;
	}
	paddr -= addr;

	paddr = FUNC3(paddr, 0x00020000);
	end = FUNC4(end, 0x00020000);

	if (end > U32_MAX) {
		FUNC2(priv->dev, "end address %08llx is too high\n", end);
		return -EINVAL;
	}
	mask = paddr ^ (end - 1);
	mask = FUNC5(mask);

	paddr = FUNC3(paddr, mask);
	end = FUNC4(end, mask);

	priv->bank[bank].base = paddr;
	priv->bank[bank].end = end;

	FUNC1(priv->dev, "range added: bank = %d, addr = %08x, end = %08x\n",
		bank, priv->bank[bank].base, priv->bank[bank].end);

	return 0;
}