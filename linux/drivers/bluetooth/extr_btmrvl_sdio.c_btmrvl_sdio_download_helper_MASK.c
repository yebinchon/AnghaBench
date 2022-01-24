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
typedef  int u32 ;
struct firmware {int* data; int size; } ;
struct btmrvl_sdio_card {int /*<<< orphan*/  ioport; TYPE_1__* func; int /*<<< orphan*/  helper; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTM_UPLD_SIZE ; 
 int /*<<< orphan*/  BTSDIO_DMA_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int CARD_IO_READY ; 
 int DN_LD_CARD_RDY ; 
 int ENOENT ; 
 int ENOMEM ; 
 size_t FIRMWARE_TRANSFER_NBLOCK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t SDIO_BLOCK_SIZE ; 
 size_t SDIO_HEADER_LEN ; 
 int FUNC4 (struct btmrvl_sdio_card*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int*,size_t) ; 

__attribute__((used)) static int FUNC12(struct btmrvl_sdio_card *card)
{
	const struct firmware *fw_helper = NULL;
	const u8 *helper = NULL;
	int ret;
	void *tmphlprbuf = NULL;
	int tmphlprbufsz, hlprblknow, helperlen;
	u8 *helperbuf;
	u32 tx_len;

	ret = FUNC10(&fw_helper, card->helper,
						&card->func->dev);
	if ((ret < 0) || !fw_helper) {
		FUNC3("request_firmware(helper) failed, error code = %d",
									ret);
		ret = -ENOENT;
		goto done;
	}

	helper = fw_helper->data;
	helperlen = fw_helper->size;

	FUNC2("Downloading helper image (%d bytes), block size %d bytes",
						helperlen, SDIO_BLOCK_SIZE);

	tmphlprbufsz = FUNC1(BTM_UPLD_SIZE, BTSDIO_DMA_ALIGN);

	tmphlprbuf = FUNC6(tmphlprbufsz, GFP_KERNEL);
	if (!tmphlprbuf) {
		FUNC3("Unable to allocate buffer for helper."
			" Terminating download");
		ret = -ENOMEM;
		goto done;
	}

	helperbuf = (u8 *) FUNC0(tmphlprbuf, BTSDIO_DMA_ALIGN);

	/* Perform helper data transfer */
	tx_len = (FIRMWARE_TRANSFER_NBLOCK * SDIO_BLOCK_SIZE)
			- SDIO_HEADER_LEN;
	hlprblknow = 0;

	do {
		ret = FUNC4(card,
					    CARD_IO_READY | DN_LD_CARD_RDY);
		if (ret < 0) {
			FUNC3("Helper download poll status timeout @ %d",
				hlprblknow);
			goto done;
		}

		/* Check if there is more data? */
		if (hlprblknow >= helperlen)
			break;

		if (helperlen - hlprblknow < tx_len)
			tx_len = helperlen - hlprblknow;

		/* Little-endian */
		helperbuf[0] = ((tx_len & 0x000000ff) >> 0);
		helperbuf[1] = ((tx_len & 0x0000ff00) >> 8);
		helperbuf[2] = ((tx_len & 0x00ff0000) >> 16);
		helperbuf[3] = ((tx_len & 0xff000000) >> 24);

		FUNC7(&helperbuf[SDIO_HEADER_LEN], &helper[hlprblknow],
				tx_len);

		/* Now send the data */
		ret = FUNC11(card->func, card->ioport, helperbuf,
				FIRMWARE_TRANSFER_NBLOCK * SDIO_BLOCK_SIZE);
		if (ret < 0) {
			FUNC3("IO error during helper download @ %d",
				hlprblknow);
			goto done;
		}

		hlprblknow += tx_len;
	} while (true);

	FUNC2("Transferring helper image EOF block");

	FUNC8(helperbuf, 0x0, SDIO_BLOCK_SIZE);

	ret = FUNC11(card->func, card->ioport, helperbuf,
							SDIO_BLOCK_SIZE);
	if (ret < 0) {
		FUNC3("IO error in writing helper image EOF block");
		goto done;
	}

	ret = 0;

done:
	FUNC5(tmphlprbuf);
	FUNC9(fw_helper);
	return ret;
}