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
struct spu {unsigned long class_0_pending; int /*<<< orphan*/  register_lock; scalar_t__ class_0_dar; int /*<<< orphan*/  (* stop_callback ) (struct spu*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (struct spu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC4 (struct spu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct spu*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *data)
{
	struct spu *spu;
	unsigned long stat, mask;

	spu = data;

	FUNC0(&spu->register_lock);
	mask = FUNC2(spu, 0);
	stat = FUNC4(spu, 0) & mask;

	spu->class_0_pending |= stat;
	spu->class_0_dar = FUNC5(spu);
	spu->stop_callback(spu, 0);
	spu->class_0_pending = 0;
	spu->class_0_dar = 0;

	FUNC3(spu, 0, stat);
	FUNC1(&spu->register_lock);

	return IRQ_HANDLED;
}