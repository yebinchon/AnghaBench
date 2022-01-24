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
struct sdio_func {int /*<<< orphan*/  num; } ;
struct btmrvl_sdio_card {int ioport; TYPE_1__* reg; struct sdio_func* func; } ;
struct TYPE_2__ {int /*<<< orphan*/  card_misc_cfg; int /*<<< orphan*/  host_int_rsr; scalar_t__ int_read_to_clear; int /*<<< orphan*/  io_port_2; int /*<<< orphan*/  io_port_1; int /*<<< orphan*/  io_port_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SDIO_BLOCK_SIZE ; 
 int /*<<< orphan*/  btmrvl_sdio_interrupt ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int FUNC3 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*) ; 
 int FUNC6 (struct sdio_func*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int FUNC9 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdio_func*,struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdio_func*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC12(struct btmrvl_sdio_card *card)
{
	struct sdio_func *func;
	u8 reg;
	int ret;

	if (!card || !card->func) {
		FUNC1("Error: card or function is NULL!");
		ret = -EINVAL;
		goto failed;
	}

	func = card->func;

	FUNC2(func);

	ret = FUNC5(func);
	if (ret) {
		FUNC1("sdio_enable_func() failed: ret=%d", ret);
		ret = -EIO;
		goto release_host;
	}

	ret = FUNC3(func, btmrvl_sdio_interrupt);
	if (ret) {
		FUNC1("sdio_claim_irq failed: ret=%d", ret);
		ret = -EIO;
		goto disable_func;
	}

	ret = FUNC9(card->func, SDIO_BLOCK_SIZE);
	if (ret) {
		FUNC1("cannot set SDIO block size");
		ret = -EIO;
		goto release_irq;
	}

	reg = FUNC6(func, card->reg->io_port_0, &ret);
	if (ret < 0) {
		ret = -EIO;
		goto release_irq;
	}

	card->ioport = reg;

	reg = FUNC6(func, card->reg->io_port_1, &ret);
	if (ret < 0) {
		ret = -EIO;
		goto release_irq;
	}

	card->ioport |= (reg << 8);

	reg = FUNC6(func, card->reg->io_port_2, &ret);
	if (ret < 0) {
		ret = -EIO;
		goto release_irq;
	}

	card->ioport |= (reg << 16);

	FUNC0("SDIO FUNC%d IO port: 0x%x", func->num, card->ioport);

	if (card->reg->int_read_to_clear) {
		reg = FUNC6(func, card->reg->host_int_rsr, &ret);
		if (ret < 0) {
			ret = -EIO;
			goto release_irq;
		}
		FUNC11(func, reg | 0x3f, card->reg->host_int_rsr, &ret);
		if (ret < 0) {
			ret = -EIO;
			goto release_irq;
		}

		reg = FUNC6(func, card->reg->card_misc_cfg, &ret);
		if (ret < 0) {
			ret = -EIO;
			goto release_irq;
		}
		FUNC11(func, reg | 0x10, card->reg->card_misc_cfg, &ret);
		if (ret < 0) {
			ret = -EIO;
			goto release_irq;
		}
	}

	FUNC10(func, card);

	FUNC7(func);

	return 0;

release_irq:
	FUNC8(func);

disable_func:
	FUNC4(func);

release_host:
	FUNC7(func);

failed:
	return ret;
}