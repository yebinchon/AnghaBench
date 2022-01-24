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
struct tpm_chip {int dummy; } ;
struct pnp_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ iotype; int /*<<< orphan*/  map_size; int /*<<< orphan*/  map_base; int /*<<< orphan*/  mem_base; int /*<<< orphan*/  config_size; int /*<<< orphan*/  config_port; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data_regs; } ;

/* Variables and functions */
 scalar_t__ TPM_INF_IO_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tpm_chip* FUNC1 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 TYPE_1__ tpm_dev ; 

__attribute__((used)) static void FUNC5(struct pnp_dev *dev)
{
	struct tpm_chip *chip = FUNC1(dev);

	FUNC4(chip);

	if (tpm_dev.iotype == TPM_INF_IO_PORT) {
		FUNC3(tpm_dev.data_regs, tpm_dev.data_size);
		FUNC3(tpm_dev.config_port,
			       tpm_dev.config_size);
	} else {
		FUNC0(tpm_dev.mem_base);
		FUNC2(tpm_dev.map_base, tpm_dev.map_size);
	}
}