#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct solos_card {int nr_ports; int buffer_size; scalar_t__ config_regs; int /*<<< orphan*/  tlet; TYPE_2__* dev; struct sk_buff** rx_skb; scalar_t__* atmdev; scalar_t__ using_dma; int /*<<< orphan*/  cli_queue_lock; int /*<<< orphan*/ * cli_queue; } ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;
struct pkt_hdr {int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct atm_vcc {TYPE_1__* stats; int /*<<< orphan*/  (* push ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_6__ {int dma_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FLAGS_ADDR ; 
#define  PKT_COMMAND 130 
#define  PKT_DATA 129 
#define  PKT_STATUS 128 
 scalar_t__ FUNC0 (struct solos_card*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  RX_DMA_SIZE ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 scalar_t__ atmdebug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atm_vcc* FUNC11 (scalar_t__,int,int) ; 
 int FUNC12 (struct solos_card*) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pkt_hdr*,scalar_t__,int) ; 
 scalar_t__ FUNC16 () ; 
 struct sk_buff* FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct solos_card*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct solos_card*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int) ; 
 struct pkt_hdr* FUNC22 (struct sk_buff*,int) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC29(unsigned long card_arg)
{
	struct solos_card *card = (void *)card_arg;
	uint32_t card_flags;
	uint32_t rx_done = 0;
	int port;

	/*
	 * Since fpga_tx() is going to need to read the flags under its lock,
	 * it can return them to us so that we don't have to hit PCI MMIO
	 * again for the same information
	 */
	card_flags = FUNC12(card);

	for (port = 0; port < card->nr_ports; port++) {
		if (card_flags & (0x10 << port)) {
			struct pkt_hdr _hdr, *header;
			struct sk_buff *skb;
			struct atm_vcc *vcc;
			int size;

			if (card->using_dma) {
				skb = card->rx_skb[port];
				card->rx_skb[port] = NULL;

				FUNC10(&card->dev->dev, FUNC2(skb)->dma_addr,
						 RX_DMA_SIZE, DMA_FROM_DEVICE);

				header = (void *)skb->data;
				size = FUNC14(header->size);
				FUNC22(skb, size + sizeof(*header));
				FUNC21(skb, sizeof(*header));
			} else {
				header = &_hdr;

				rx_done |= 0x10 << port;

				FUNC15(header, FUNC0(card, port), sizeof(*header));

				size = FUNC14(header->size);
				if (size > (card->buffer_size - sizeof(*header))){
					FUNC8(&card->dev->dev, "Invalid buffer size\n");
					continue;
				}

				/* Use netdev_alloc_skb() because it adds NET_SKB_PAD of
				 * headroom, and ensures we can route packets back out an
				 * Ethernet interface (for example) without having to
				 * reallocate. Adding NET_IP_ALIGN also ensures that both
				 * PPPoATM and PPPoEoBR2684 packets end up aligned. */
				skb = FUNC17(NULL, size + 1);
				if (!skb) {
					if (FUNC16())
						FUNC8(&card->dev->dev, "Failed to allocate sk_buff for RX\n");
					continue;
				}

				FUNC15(FUNC22(skb, size),
					      FUNC0(card, port) + sizeof(*header),
					      size);
			}
			if (atmdebug) {
				FUNC6(&card->dev->dev, "Received: port %d\n", port);
				FUNC6(&card->dev->dev, "size: %d VPI: %d VCI: %d\n",
					 size, FUNC14(header->vpi),
					 FUNC14(header->vci));
				FUNC18(skb);
			}

			switch (FUNC14(header->type)) {
			case PKT_DATA:
				vcc = FUNC11(card->atmdev[port], FUNC14(header->vpi),
					       FUNC14(header->vci));
				if (!vcc) {
					if (FUNC16())
						FUNC8(&card->dev->dev, "Received packet for unknown VPI.VCI %d.%d on port %d\n",
							 FUNC14(header->vpi), FUNC14(header->vci),
							 port);
					FUNC7(skb);
					break;
				}
				FUNC3(vcc, skb->truesize);
				vcc->push(vcc, skb);
				FUNC4(&vcc->stats->rx);
				break;

			case PKT_STATUS:
				if (FUNC20(card, port, skb) &&
				    FUNC16()) {
					FUNC8(&card->dev->dev, "Bad status packet of %d bytes on port %d:\n", skb->len, port);
					FUNC18(skb);
				}
				FUNC7(skb);
				break;

			case PKT_COMMAND:
			default: /* FIXME: Not really, surely? */
				if (FUNC19(card, port, skb))
					break;
				FUNC25(&card->cli_queue_lock);
				if (FUNC23(&card->cli_queue[port]) > 10) {
					if (FUNC16())
						FUNC8(&card->dev->dev, "Dropping console response on port %d\n",
							 port);
					FUNC7(skb);
				} else
					FUNC24(&card->cli_queue[port], skb);
				FUNC26(&card->cli_queue_lock);
				break;
			}
		}
		/* Allocate RX skbs for any ports which need them */
		if (card->using_dma && card->atmdev[port] &&
		    !card->rx_skb[port]) {
			/* Unlike the MMIO case (qv) we can't add NET_IP_ALIGN
			 * here; the FPGA can only DMA to addresses which are
			 * aligned to 4 bytes. */
			struct sk_buff *skb = FUNC5(RX_DMA_SIZE);
			if (skb) {
				FUNC2(skb)->dma_addr =
					FUNC9(&card->dev->dev, skb->data,
						       RX_DMA_SIZE, DMA_FROM_DEVICE);
				FUNC13(FUNC2(skb)->dma_addr,
					  card->config_regs + FUNC1(port));
				card->rx_skb[port] = skb;
			} else {
				if (FUNC16())
					FUNC8(&card->dev->dev, "Failed to allocate RX skb");

				/* We'll have to try again later */
				FUNC28(&card->tlet);
			}
		}
	}
	if (rx_done)
		FUNC13(rx_done, card->config_regs + FLAGS_ADDR);

	return;
}