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
struct proxy_dev {int /*<<< orphan*/  wq; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_OPENED_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct proxy_dev *proxy_dev)
{
	FUNC0(&proxy_dev->buf_lock);

	proxy_dev->state &= ~STATE_OPENED_FLAG;

	FUNC1(&proxy_dev->buf_lock);

	/* no more TPM responses -- wake up anyone waiting for them */
	FUNC2(&proxy_dev->wq);
}