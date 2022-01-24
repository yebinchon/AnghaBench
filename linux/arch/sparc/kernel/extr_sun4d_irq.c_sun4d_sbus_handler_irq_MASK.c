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
struct irq_bucket {int /*<<< orphan*/  irq; struct irq_bucket* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct irq_bucket** irq_map ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC6 (unsigned int,int,unsigned int) ; 

__attribute__((used)) static void FUNC7(int sbusl)
{
	unsigned int bus_mask;
	unsigned int sbino, slot;
	unsigned int sbil;

	bus_mask = FUNC3(sbusl) & 0x3ffff;
	FUNC2(sbusl, bus_mask);

	sbil = (sbusl << 2);
	/* Loop for each pending SBI */
	for (sbino = 0; bus_mask; sbino++, bus_mask >>= 1) {
		unsigned int idx, mask;

		if (!(bus_mask & 1))
			continue;
		/* XXX This seems to ACK the irq twice.  acquire_sbi()
		 * XXX uses swap, therefore this writes 0xf << sbil,
		 * XXX then later release_sbi() will write the individual
		 * XXX bits which were set again.
		 */
		mask = FUNC1(FUNC0(sbino), 0xf << sbil);
		mask &= (0xf << sbil);

		/* Loop for each pending SBI slot */
		slot = (1 << sbil);
		for (idx = 0; mask != 0; idx++, slot <<= 1) {
			unsigned int pil;
			struct irq_bucket *p;

			if (!(mask & slot))
				continue;

			mask &= ~slot;
			pil = FUNC6(sbino, sbusl, idx);

			p = irq_map[pil];
			while (p) {
				struct irq_bucket *next;

				next = p->next;
				FUNC4(p->irq);
				p = next;
			}
			FUNC5(FUNC0(sbino), slot);
		}
	}
}