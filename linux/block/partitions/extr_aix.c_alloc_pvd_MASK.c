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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pvd {int dummy; } ;
struct parsed_partitions {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct pvd*) ; 
 struct pvd* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static struct pvd *FUNC3(struct parsed_partitions *state, u32 lba)
{
	size_t count = sizeof(struct pvd);
	struct pvd *p;

	p = FUNC1(count, GFP_KERNEL);
	if (!p)
		return NULL;

	if (FUNC2(state, lba, (u8 *) p, count) < count) {
		FUNC0(p);
		return NULL;
	}
	return p;
}