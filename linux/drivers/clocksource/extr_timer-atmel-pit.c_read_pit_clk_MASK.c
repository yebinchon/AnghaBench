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
typedef  int u64 ;
typedef  int u32 ;
struct pit_data {int cnt; int cycle; int /*<<< orphan*/  base; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PIT_PIIR ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct pit_data* FUNC2 (struct clocksource*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static u64 FUNC6(struct clocksource *cs)
{
	struct pit_data *data = FUNC2(cs);
	unsigned long flags;
	u32 elapsed;
	u32 t;

	FUNC5(flags);
	elapsed = data->cnt;
	t = FUNC3(data->base, AT91_PIT_PIIR);
	FUNC4(flags);

	elapsed += FUNC1(t) * data->cycle;
	elapsed += FUNC0(t);
	return elapsed;
}