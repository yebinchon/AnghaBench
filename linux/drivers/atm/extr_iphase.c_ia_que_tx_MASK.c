#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct atm_vcc {int /*<<< orphan*/  vci; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {struct atm_vcc* vcc; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_backlog; } ;
typedef  TYPE_1__ IADEV ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (IADEV *iadev) { 
   struct sk_buff *skb;
   int num_desc;
   struct atm_vcc *vcc;
   num_desc = FUNC2(iadev);

   while (num_desc && (skb = FUNC5(&iadev->tx_backlog))) {
      if (!(vcc = FUNC0(skb)->vcc)) {
         FUNC1(skb);
         FUNC4("ia_que_tx: Null vcc\n");
         break;
      }
      if (!FUNC7(ATM_VF_READY,&vcc->flags)) {
         FUNC1(skb);
         FUNC4("Free the SKB on closed vci %d \n", vcc->vci);
         break;
      }
      if (FUNC3 (vcc, skb)) {
         FUNC6(&iadev->tx_backlog, skb);
      }
      num_desc--;
   }
   return 0;
}