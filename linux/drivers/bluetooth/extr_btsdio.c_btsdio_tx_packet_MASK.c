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
struct sk_buff {int* data; int len; } ;
struct btsdio_data {TYPE_2__* hdev; int /*<<< orphan*/  func; } ;
struct TYPE_3__ {int byte_tx; } ;
struct TYPE_4__ {TYPE_1__ stat; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_PC_WRT ; 
 int /*<<< orphan*/  REG_TDAT ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct btsdio_data *data, struct sk_buff *skb)
{
	int err;

	FUNC0("%s", data->hdev->name);

	/* Prepend Type-A header */
	FUNC6(skb, 4);
	skb->data[0] = (skb->len & 0x0000ff);
	skb->data[1] = (skb->len & 0x00ff00) >> 8;
	skb->data[2] = (skb->len & 0xff0000) >> 16;
	skb->data[3] = FUNC1(skb);

	err = FUNC4(data->func, REG_TDAT, skb->data, skb->len);
	if (err < 0) {
		FUNC5(skb, 4);
		FUNC3(data->func, 0x01, REG_PC_WRT, NULL);
		return err;
	}

	data->hdev->stat.byte_tx += skb->len;

	FUNC2(skb);

	return 0;
}