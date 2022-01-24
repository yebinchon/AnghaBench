#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int /*<<< orphan*/  completed_q; int /*<<< orphan*/  pending_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*) ; 
 struct urb* FUNC1 (struct bfusb_data*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

__attribute__((used)) static void FUNC6(struct bfusb_data *data)
{
	struct sk_buff *skb;
	struct urb *urb;

	FUNC0("bfusb %p", data);

	while ((skb = FUNC2(&data->pending_q))) {
		urb = ((struct bfusb_data_scb *) skb->cb)->urb;
		FUNC5(urb);
		FUNC3(&data->completed_q, skb);
	}

	while ((urb = FUNC1(data)))
		FUNC4(urb);
}