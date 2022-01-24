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
struct irq_handler_data {int /*<<< orphan*/  dev_ino; int /*<<< orphan*/  dev_handle; } ;
struct ino_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ino_bucket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct irq_handler_data* FUNC3 (unsigned int) ; 
 struct ino_bucket* ivector_table ; 
 unsigned long nr_ivec ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned int irq)
{
	struct irq_handler_data *ihd = FUNC3(irq);
	struct ino_bucket *bucket;
	unsigned long sysino;

	sysino = FUNC4(ihd->dev_handle, ihd->dev_ino);
	FUNC0(sysino >= nr_ivec);
	bucket = &ivector_table[sysino];
	FUNC2(FUNC1(bucket), irq);
}