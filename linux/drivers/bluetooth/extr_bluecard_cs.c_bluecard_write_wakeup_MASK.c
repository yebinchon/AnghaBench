#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct bluecard_info {int ctrl_reg; int /*<<< orphan*/  tx_state; TYPE_3__* hdev; int /*<<< orphan*/  txq; TYPE_4__* p_dev; } ;
struct TYPE_8__ {TYPE_1__** resource; } ;
struct TYPE_6__ {int byte_tx; } ;
struct TYPE_7__ {TYPE_2__ stat; } ;
struct TYPE_5__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  PKT_BAUD_RATE_115200 131 
#define  PKT_BAUD_RATE_230400 130 
#define  PKT_BAUD_RATE_460800 129 
#define  PKT_BAUD_RATE_57600 128 
 scalar_t__ REG_COMMAND ; 
 unsigned char REG_COMMAND_TX_BUF_ONE ; 
 unsigned char REG_COMMAND_TX_BUF_TWO ; 
 scalar_t__ REG_CONTROL ; 
 unsigned char REG_CONTROL_BAUD_RATE_115200 ; 
 unsigned char REG_CONTROL_BAUD_RATE_230400 ; 
 unsigned char REG_CONTROL_BAUD_RATE_460800 ; 
 unsigned char REG_CONTROL_BAUD_RATE_57600 ; 
 int REG_CONTROL_RTS ; 
 unsigned long XMIT_BUFFER_NUMBER ; 
 unsigned long XMIT_BUF_ONE_READY ; 
 unsigned long XMIT_BUF_TWO_READY ; 
 unsigned long XMIT_SENDING ; 
 unsigned long XMIT_SENDING_READY ; 
 unsigned long XMIT_WAKEUP ; 
 int /*<<< orphan*/  FUNC3 (struct bluecard_info*) ; 
 int FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC17 (unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static void FUNC19(struct bluecard_info *info)
{
	if (!info) {
		FUNC0("Unknown device");
		return;
	}

	if (!FUNC18(XMIT_SENDING_READY, &(info->tx_state)))
		return;

	if (FUNC17(XMIT_SENDING, &(info->tx_state))) {
		FUNC13(XMIT_WAKEUP, &(info->tx_state));
		return;
	}

	do {
		unsigned int iobase = info->p_dev->resource[0]->start;
		unsigned int offset;
		unsigned char command;
		unsigned long ready_bit;
		register struct sk_buff *skb;
		int len;

		FUNC6(XMIT_WAKEUP, &(info->tx_state));

		if (!FUNC12(info->p_dev))
			return;

		if (FUNC18(XMIT_BUFFER_NUMBER, &(info->tx_state))) {
			if (!FUNC18(XMIT_BUF_TWO_READY, &(info->tx_state)))
				break;
			offset = 0x10;
			command = REG_COMMAND_TX_BUF_TWO;
			ready_bit = XMIT_BUF_TWO_READY;
		} else {
			if (!FUNC18(XMIT_BUF_ONE_READY, &(info->tx_state)))
				break;
			offset = 0x00;
			command = REG_COMMAND_TX_BUF_ONE;
			ready_bit = XMIT_BUF_ONE_READY;
		}

		skb = FUNC14(&(info->txq));
		if (!skb)
			break;

		if (FUNC7(skb) & 0x80) {
			/* Disable RTS */
			info->ctrl_reg |= REG_CONTROL_RTS;
			FUNC10(info->ctrl_reg, iobase + REG_CONTROL);
		}

		/* Activate LED */
		FUNC3(info);

		/* Send frame */
		len = FUNC4(iobase, offset, skb->data, skb->len);

		/* Tell the FPGA to send the data */
		FUNC11(command, iobase + REG_COMMAND);

		/* Mark the buffer as dirty */
		FUNC6(ready_bit, &(info->tx_state));

		if (FUNC7(skb) & 0x80) {
			FUNC1(wq);
			FUNC2(wait);

			unsigned char baud_reg;

			switch (FUNC7(skb)) {
			case PKT_BAUD_RATE_460800:
				baud_reg = REG_CONTROL_BAUD_RATE_460800;
				break;
			case PKT_BAUD_RATE_230400:
				baud_reg = REG_CONTROL_BAUD_RATE_230400;
				break;
			case PKT_BAUD_RATE_115200:
				baud_reg = REG_CONTROL_BAUD_RATE_115200;
				break;
			case PKT_BAUD_RATE_57600:
				/* Fall through... */
			default:
				baud_reg = REG_CONTROL_BAUD_RATE_57600;
				break;
			}

			/* Wait until the command reaches the baseband */
			FUNC9(100);

			/* Set baud on baseband */
			info->ctrl_reg &= ~0x03;
			info->ctrl_reg |= baud_reg;
			FUNC10(info->ctrl_reg, iobase + REG_CONTROL);

			/* Enable RTS */
			info->ctrl_reg &= ~REG_CONTROL_RTS;
			FUNC10(info->ctrl_reg, iobase + REG_CONTROL);

			/* Wait before the next HCI packet can be send */
			FUNC9(1000);
		}

		if (len == skb->len) {
			FUNC8(skb);
		} else {
			FUNC15(skb, len);
			FUNC16(&(info->txq), skb);
		}

		info->hdev->stat.byte_tx += len;

		/* Change buffer */
		FUNC5(XMIT_BUFFER_NUMBER, &(info->tx_state));

	} while (FUNC18(XMIT_WAKEUP, &(info->tx_state)));

	FUNC6(XMIT_SENDING, &(info->tx_state));
}