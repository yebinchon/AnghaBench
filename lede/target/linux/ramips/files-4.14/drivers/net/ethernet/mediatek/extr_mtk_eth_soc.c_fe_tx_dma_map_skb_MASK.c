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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct page {int dummy; } ;
struct fe_tx_ring {int dummy; } ;
struct fe_map_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fe_tx_ring*,struct fe_map_state*,struct page*,size_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct sk_buff*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fe_tx_ring *ring, struct fe_map_state *st,
			     struct sk_buff *skb)
{
	struct page *page = FUNC3(skb->data);
	size_t offset = FUNC1(skb->data);
	size_t size = FUNC2(skb);

	return FUNC0(ring, st, page, offset, size);
}