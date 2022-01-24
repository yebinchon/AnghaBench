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
struct spu {int number; scalar_t__* irqs; int /*<<< orphan*/  irq_c2; int /*<<< orphan*/  irq_c1; int /*<<< orphan*/  irq_c0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct spu*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  spu_irq_class_0 ; 
 int /*<<< orphan*/  spu_irq_class_1 ; 
 int /*<<< orphan*/  spu_irq_class_2 ; 

__attribute__((used)) static int FUNC3(struct spu *spu)
{
	int ret = 0;

	if (spu->irqs[0]) {
		FUNC2(spu->irq_c0, sizeof (spu->irq_c0), "spe%02d.0",
			 spu->number);
		ret = FUNC1(spu->irqs[0], spu_irq_class_0,
				  0, spu->irq_c0, spu);
		if (ret)
			goto bail0;
	}
	if (spu->irqs[1]) {
		FUNC2(spu->irq_c1, sizeof (spu->irq_c1), "spe%02d.1",
			 spu->number);
		ret = FUNC1(spu->irqs[1], spu_irq_class_1,
				  0, spu->irq_c1, spu);
		if (ret)
			goto bail1;
	}
	if (spu->irqs[2]) {
		FUNC2(spu->irq_c2, sizeof (spu->irq_c2), "spe%02d.2",
			 spu->number);
		ret = FUNC1(spu->irqs[2], spu_irq_class_2,
				  0, spu->irq_c2, spu);
		if (ret)
			goto bail2;
	}
	return 0;

bail2:
	if (spu->irqs[1])
		FUNC0(spu->irqs[1], spu);
bail1:
	if (spu->irqs[0])
		FUNC0(spu->irqs[0], spu);
bail0:
	return ret;
}