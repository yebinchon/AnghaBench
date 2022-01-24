#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct idt77252_dev {int /*<<< orphan*/  name; } ;
struct atm_vcc {TYPE_1__* stats; struct atm_dev* dev; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_err; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (int) ; 
 int FUNC2 (struct atm_vcc*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,void*,int) ; 

__attribute__((used)) static int
FUNC7(struct atm_vcc *vcc, void *cell, int flags)
{
	struct atm_dev *dev = vcc->dev;
	struct idt77252_dev *card = dev->dev_data;
	struct sk_buff *skb;

	skb = FUNC1(64);
	if (!skb) {
		FUNC3("%s: Out of memory in send_oam().\n", card->name);
		FUNC0(&vcc->stats->tx_err);
		return -ENOMEM;
	}
	FUNC4(skb->truesize, &FUNC5(vcc)->sk_wmem_alloc);

	FUNC6(skb, cell, 52);

	return FUNC2(vcc, skb, 1);
}