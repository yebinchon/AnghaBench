#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_9__ {scalar_t__ mode; scalar_t__ count; scalar_t__ latency; } ;
struct TYPE_10__ {scalar_t__ block_size; scalar_t__ stripe_size; scalar_t__ vendor_id; scalar_t__ cache_order; TYPE_1__ intr_coal; } ;
struct TYPE_12__ {scalar_t__ version; scalar_t__ crc; } ;
struct TYPE_11__ {TYPE_2__ data; TYPE_5__ hdr; } ;
struct rsxx_cardinfo {int config_valid; TYPE_3__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  CREG_ADD_CONFIG ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ RSXX_CFG_VERSION ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (struct rsxx_cardinfo*,int /*<<< orphan*/ ,int,TYPE_3__*,int) ; 
 int FUNC10 (struct rsxx_cardinfo*) ; 

int FUNC11(struct rsxx_cardinfo *card)
{
	int st;
	u32 crc;

	st = FUNC9(card, CREG_ADD_CONFIG, sizeof(card->config),
				&card->config, 1);
	if (st) {
		FUNC6(FUNC0(card),
			"Failed reading card config.\n");
		return st;
	}

	FUNC4(&card->config.hdr);

	if (card->config.hdr.version == RSXX_CFG_VERSION) {
		/*
		 * We calculate the CRC with the data in little endian, because
		 * early drivers did not take big endian CPUs into account.
		 * The data is always stored in big endian, so we need to byte
		 * swap it before calculating the CRC.
		 */

		FUNC3(&card->config);

		/* Check the CRC */
		crc = FUNC1(&card->config);
		if (crc != card->config.hdr.crc) {
			FUNC6(FUNC0(card),
				"Config corruption detected!\n");
			FUNC7(FUNC0(card),
				"CRC (sb x%08x is x%08x)\n",
				card->config.hdr.crc, crc);
			return -EIO;
		}

		/* Convert the data to CPU byteorder */
		FUNC2(&card->config);

	} else if (card->config.hdr.version != 0) {
		FUNC6(FUNC0(card),
			"Invalid config version %d.\n",
			card->config.hdr.version);
		/*
		 * Config version changes require special handling from the
		 * user
		 */
		return -EINVAL;
	} else {
		FUNC7(FUNC0(card),
			"Initializing card configuration.\n");
		FUNC8(&card->config);
		st = FUNC10(card);
		if (st)
			return st;
	}

	card->config_valid = 1;

	FUNC5(FUNC0(card), "version:     x%08x\n",
		card->config.hdr.version);
	FUNC5(FUNC0(card), "crc:         x%08x\n",
		card->config.hdr.crc);
	FUNC5(FUNC0(card), "block_size:  x%08x\n",
		card->config.data.block_size);
	FUNC5(FUNC0(card), "stripe_size: x%08x\n",
		card->config.data.stripe_size);
	FUNC5(FUNC0(card), "vendor_id:   x%08x\n",
		card->config.data.vendor_id);
	FUNC5(FUNC0(card), "cache_order: x%08x\n",
		card->config.data.cache_order);
	FUNC5(FUNC0(card), "mode:        x%08x\n",
		card->config.data.intr_coal.mode);
	FUNC5(FUNC0(card), "count:       x%08x\n",
		card->config.data.intr_coal.count);
	FUNC5(FUNC0(card), "latency:     x%08x\n",
		 card->config.data.intr_coal.latency);

	return 0;
}