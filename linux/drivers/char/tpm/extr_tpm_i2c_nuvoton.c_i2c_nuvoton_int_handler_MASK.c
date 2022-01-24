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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct priv_data {int /*<<< orphan*/  irq; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  intrs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct priv_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int dummy, void *dev_id)
{
	struct tpm_chip *chip = dev_id;
	struct priv_data *priv = FUNC0(&chip->dev);

	priv->intrs++;
	FUNC2(&priv->read_queue);
	FUNC1(priv->irq);
	return IRQ_HANDLED;
}