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
struct hci_uart {struct h4_struct* priv; } ;
struct h4_struct {int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct h4_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hci_uart *hu)
{
	struct h4_struct *h4;

	FUNC0("hu %p", hu);

	h4 = FUNC1(sizeof(*h4), GFP_KERNEL);
	if (!h4)
		return -ENOMEM;

	FUNC2(&h4->txq);

	hu->priv = h4;
	return 0;
}