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
struct solos_card {TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t PKT_COMMAND ; 
 struct sk_buff* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct solos_card*,int,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct pkt_hdr* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,char const*,size_t) ; 

__attribute__((used)) static int FUNC7(struct solos_card *card, int dev, const char *buf, size_t size)
{
	struct sk_buff *skb;
	struct pkt_hdr *header;

	if (size > (BUF_SIZE - sizeof(*header))) {
		FUNC2(&card->dev->dev, "Command is too big.  Dropping request\n");
		return 0;
	}
	skb = FUNC0(size + sizeof(*header), GFP_ATOMIC);
	if (!skb) {
		FUNC3(&card->dev->dev, "Failed to allocate sk_buff in send_command()\n");
		return 0;
	}

	header = FUNC5(skb, sizeof(*header));

	header->size = FUNC1(size);
	header->vpi = FUNC1(0);
	header->vci = FUNC1(0);
	header->type = FUNC1(PKT_COMMAND);

	FUNC6(skb, buf, size);

	FUNC4(card, dev, skb, NULL);

	return 0;
}