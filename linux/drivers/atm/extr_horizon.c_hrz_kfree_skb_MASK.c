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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vcc; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pop ) (TYPE_1__*,struct sk_buff*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC3 (struct sk_buff * skb) {
  if (FUNC0(skb)->vcc->pop) {
    FUNC0(skb)->vcc->pop (FUNC0(skb)->vcc, skb);
  } else {
    FUNC1 (skb);
  }
}