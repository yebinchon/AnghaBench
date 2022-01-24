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
struct solos_card {int tx_mask; unsigned long dma_alignment; unsigned char* dma_bounce; int /*<<< orphan*/  tx_lock; scalar_t__ config_regs; int /*<<< orphan*/  param_wq; TYPE_1__* dev; struct sk_buff** tx_skb; scalar_t__ using_dma; int /*<<< orphan*/  tx_queue_lock; int /*<<< orphan*/ * tx_queue; } ;
struct sk_buff {unsigned char* data; int /*<<< orphan*/  len; } ;
struct pkt_hdr {int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  size; } ;
struct atm_vcc {TYPE_2__* stats; } ;
struct TYPE_6__ {int dma_addr; struct atm_vcc* vcc; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char BUF_SIZE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FLAGS_ADDR ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct solos_card*,unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ atmdebug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC22(struct solos_card *card)
{
	uint32_t tx_pending, card_flags;
	uint32_t tx_started = 0;
	struct sk_buff *skb;
	struct atm_vcc *vcc;
	unsigned char port;
	unsigned long flags;

	FUNC18(&card->tx_lock, flags);
	
	card_flags = FUNC8(card->config_regs + FLAGS_ADDR);
	/*
	 * The queue lock is required for _writing_ to tx_mask, but we're
	 * OK to read it here without locking. The only potential update
	 * that we could race with is in fpga_queue() where it sets a bit
	 * for a new port... but it's going to call this function again if
	 * it's doing that, anyway.
	 */
	tx_pending = card->tx_mask & ~card_flags;

	for (port = 0; tx_pending; tx_pending >>= 1, port++) {
		if (tx_pending & 1) {
			struct sk_buff *oldskb = card->tx_skb[port];
			if (oldskb) {
				FUNC7(&card->dev->dev, FUNC0(oldskb)->dma_addr,
						 oldskb->len, DMA_TO_DEVICE);
				card->tx_skb[port] = NULL;
			}
			FUNC17(&card->tx_queue_lock);
			skb = FUNC14(&card->tx_queue[port]);
			if (!skb)
				card->tx_mask &= ~(1 << port);
			FUNC19(&card->tx_queue_lock);

			if (skb && !card->using_dma) {
				FUNC12(FUNC1(card, port), skb->data, skb->len);
				tx_started |= 1 << port;
				oldskb = skb; /* We're done with this skb already */
			} else if (skb && card->using_dma) {
				unsigned char *data = skb->data;
				if ((unsigned long)data & card->dma_alignment) {
					data = card->dma_bounce + (BUF_SIZE * port);
					FUNC11(data, skb->data, skb->len);
				}
				FUNC0(skb)->dma_addr = FUNC6(&card->dev->dev, data,
								       skb->len, DMA_TO_DEVICE);
				card->tx_skb[port] = skb;
				FUNC9(FUNC0(skb)->dma_addr,
					  card->config_regs + FUNC2(port));
			}

			if (!oldskb)
				continue;

			/* Clean up and free oldskb now it's gone */
			if (atmdebug) {
				struct pkt_hdr *header = (void *)oldskb->data;
				int size = FUNC10(header->size);

				FUNC15(oldskb, sizeof(*header));
				FUNC4(&card->dev->dev, "Transmitted: port %d\n",
					 port);
				FUNC4(&card->dev->dev, "size: %d VPI: %d VCI: %d\n",
					 size, FUNC10(header->vpi),
					 FUNC10(header->vci));
				FUNC13(oldskb);
			}

			vcc = FUNC0(oldskb)->vcc;

			if (vcc) {
				FUNC3(&vcc->stats->tx);
				FUNC16(vcc, oldskb);
			} else {
				FUNC5(oldskb);
				FUNC21(&card->param_wq);
			}
		}
	}
	/* For non-DMA TX, write the 'TX start' bit for all four ports simultaneously */
	if (tx_started)
		FUNC9(tx_started, card->config_regs + FLAGS_ADDR);

	FUNC20(&card->tx_lock, flags);
	return card_flags;
}