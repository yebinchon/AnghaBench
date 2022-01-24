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
typedef  int u8 ;
struct tpm_chip {int dummy; } ;
struct pnp_device_id {int /*<<< orphan*/  id; } ;
struct pnp_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ iotype; int config_port; int config_size; int data_regs; int data_size; int map_base; int index_off; int /*<<< orphan*/  map_size; int /*<<< orphan*/ * mem_base; } ;

/* Variables and functions */
 int CHIP_ID1 ; 
 int CHIP_ID2 ; 
 int /*<<< orphan*/  CMD ; 
 int DISABLE_REGISTER_PAIR ; 
 int EINVAL ; 
 int EIO ; 
 int ENABLE_REGISTER_PAIR ; 
 int ENODEV ; 
 int IDPDH ; 
 int IDPDL ; 
 int IDVENH ; 
 int IDVENL ; 
 int IOLIMH ; 
 int IOLIML ; 
 int IORESOURCE_DISABLED ; 
 scalar_t__ FUNC0 (struct tpm_chip*) ; 
 int FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  RESET_LP_IRQC_DISABLE ; 
 int TPM_ADDR ; 
 int TPM_DAR ; 
 int TPM_INFINEON_DEV_VEN_VALUE ; 
 int /*<<< orphan*/  TPM_INF_ADDR ; 
 int /*<<< orphan*/  TPM_INF_DATA ; 
 scalar_t__ TPM_INF_IO_MEM ; 
 scalar_t__ TPM_INF_IO_PORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct pnp_dev*,int) ; 
 void* FUNC12 (struct pnp_dev*,int) ; 
 scalar_t__ FUNC13 (struct pnp_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/ * FUNC16 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC17 (int,int,char*) ; 
 int FUNC18 (struct tpm_chip*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ tpm_dev ; 
 int /*<<< orphan*/  tpm_inf ; 
 struct tpm_chip* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct pnp_dev *dev,
				       const struct pnp_device_id *dev_id)
{
	int rc = 0;
	u8 iol, ioh;
	int vendorid[2];
	int version[2];
	int productid[2];
	const char *chipname;
	struct tpm_chip *chip;

	/* read IO-ports through PnP */
	if (FUNC13(dev, 0) && FUNC13(dev, 1) &&
	    !(FUNC10(dev, 0) & IORESOURCE_DISABLED)) {

		tpm_dev.iotype = TPM_INF_IO_PORT;

		tpm_dev.config_port = FUNC12(dev, 0);
		tpm_dev.config_size = FUNC11(dev, 0);
		tpm_dev.data_regs = FUNC12(dev, 1);
		tpm_dev.data_size = FUNC11(dev, 1);
		if ((tpm_dev.data_size < 4) || (tpm_dev.config_size < 2)) {
			rc = -EINVAL;
			goto err_last;
		}
		FUNC3(&dev->dev, "Found %s with ID %s\n",
			 dev->name, dev_id->id);
		if (!((tpm_dev.data_regs >> 8) & 0xff)) {
			rc = -EINVAL;
			goto err_last;
		}
		/* publish my base address and request region */
		if (FUNC17(tpm_dev.data_regs, tpm_dev.data_size,
				   "tpm_infineon0") == NULL) {
			rc = -EINVAL;
			goto err_last;
		}
		if (FUNC17(tpm_dev.config_port, tpm_dev.config_size,
				   "tpm_infineon0") == NULL) {
			FUNC15(tpm_dev.data_regs, tpm_dev.data_size);
			rc = -EINVAL;
			goto err_last;
		}
	} else if (FUNC9(dev, 0) &&
		   !(FUNC6(dev, 0) & IORESOURCE_DISABLED)) {

		tpm_dev.iotype = TPM_INF_IO_MEM;

		tpm_dev.map_base = FUNC8(dev, 0);
		tpm_dev.map_size = FUNC7(dev, 0);

		FUNC3(&dev->dev, "Found %s with ID %s\n",
			 dev->name, dev_id->id);

		/* publish my base address and request region */
		if (FUNC16(tpm_dev.map_base, tpm_dev.map_size,
				       "tpm_infineon0") == NULL) {
			rc = -EINVAL;
			goto err_last;
		}

		tpm_dev.mem_base = FUNC4(tpm_dev.map_base, tpm_dev.map_size);
		if (tpm_dev.mem_base == NULL) {
			FUNC14(tpm_dev.map_base, tpm_dev.map_size);
			rc = -EINVAL;
			goto err_last;
		}

		/*
		 * The only known MMIO based Infineon TPM system provides
		 * a single large mem region with the device config
		 * registers at the default TPM_ADDR.  The data registers
		 * seem like they could be placed anywhere within the MMIO
		 * region, but lets just put them at zero offset.
		 */
		tpm_dev.index_off = TPM_ADDR;
		tpm_dev.data_regs = 0x0;
	} else {
		rc = -EINVAL;
		goto err_last;
	}

	/* query chip for its vendor, its version number a.s.o. */
	FUNC20(ENABLE_REGISTER_PAIR, TPM_INF_ADDR);
	FUNC20(IDVENL, TPM_INF_ADDR);
	vendorid[1] = FUNC19(TPM_INF_DATA);
	FUNC20(IDVENH, TPM_INF_ADDR);
	vendorid[0] = FUNC19(TPM_INF_DATA);
	FUNC20(IDPDL, TPM_INF_ADDR);
	productid[1] = FUNC19(TPM_INF_DATA);
	FUNC20(IDPDH, TPM_INF_ADDR);
	productid[0] = FUNC19(TPM_INF_DATA);
	FUNC20(CHIP_ID1, TPM_INF_ADDR);
	version[1] = FUNC19(TPM_INF_DATA);
	FUNC20(CHIP_ID2, TPM_INF_ADDR);
	version[0] = FUNC19(TPM_INF_DATA);

	switch ((productid[0] << 8) | productid[1]) {
	case 6:
		chipname = " (SLD 9630 TT 1.1)";
		break;
	case 11:
		chipname = " (SLB 9635 TT 1.2)";
		break;
	default:
		chipname = " (unknown chip)";
		break;
	}

	if ((vendorid[0] << 8 | vendorid[1]) == (TPM_INFINEON_DEV_VEN_VALUE)) {

		/* configure TPM with IO-ports */
		FUNC20(IOLIMH, TPM_INF_ADDR);
		FUNC20((tpm_dev.data_regs >> 8) & 0xff, TPM_INF_DATA);
		FUNC20(IOLIML, TPM_INF_ADDR);
		FUNC20((tpm_dev.data_regs & 0xff), TPM_INF_DATA);

		/* control if IO-ports are set correctly */
		FUNC20(IOLIMH, TPM_INF_ADDR);
		ioh = FUNC19(TPM_INF_DATA);
		FUNC20(IOLIML, TPM_INF_ADDR);
		iol = FUNC19(TPM_INF_DATA);

		if ((ioh << 8 | iol) != tpm_dev.data_regs) {
			FUNC2(&dev->dev,
				"Could not set IO-data registers to 0x%x\n",
				tpm_dev.data_regs);
			rc = -EIO;
			goto err_release_region;
		}

		/* activate register */
		FUNC20(TPM_DAR, TPM_INF_ADDR);
		FUNC20(0x01, TPM_INF_DATA);
		FUNC20(DISABLE_REGISTER_PAIR, TPM_INF_ADDR);

		/* disable RESET, LP and IRQC */
		FUNC21(RESET_LP_IRQC_DISABLE, CMD);

		/* Finally, we're done, print some infos */
		FUNC3(&dev->dev, "TPM found: "
			 "config base 0x%lx, "
			 "data base 0x%lx, "
			 "chip version 0x%02x%02x, "
			 "vendor id 0x%x%x (Infineon), "
			 "product id 0x%02x%02x"
			 "%s\n",
			 tpm_dev.iotype == TPM_INF_IO_PORT ?
			 tpm_dev.config_port :
			 tpm_dev.map_base + tpm_dev.index_off,
			 tpm_dev.iotype == TPM_INF_IO_PORT ?
			 tpm_dev.data_regs :
			 tpm_dev.map_base + tpm_dev.data_regs,
			 version[0], version[1],
			 vendorid[0], vendorid[1],
			 productid[0], productid[1], chipname);

		chip = FUNC22(&dev->dev, &tpm_inf);
		if (FUNC0(chip)) {
			rc = FUNC1(chip);
			goto err_release_region;
		}

		rc = FUNC18(chip);
		if (rc)
			goto err_release_region;

		return 0;
	} else {
		rc = -ENODEV;
		goto err_release_region;
	}

err_release_region:
	if (tpm_dev.iotype == TPM_INF_IO_PORT) {
		FUNC15(tpm_dev.data_regs, tpm_dev.data_size);
		FUNC15(tpm_dev.config_port, tpm_dev.config_size);
	} else {
		FUNC5(tpm_dev.mem_base);
		FUNC14(tpm_dev.map_base, tpm_dev.map_size);
	}

err_last:
	return rc;
}