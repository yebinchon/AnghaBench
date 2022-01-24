#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpuid {int /*<<< orphan*/  machine; } ;
struct TYPE_2__ {int /*<<< orphan*/  csvn; int /*<<< orphan*/  cfvn; } ;
struct cpu_cf_events {TYPE_1__ info; } ;
struct cf_trailer_entry {int speed; int clock_base; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  tod_base; scalar_t__ cpu_speed; int /*<<< orphan*/  mach_type; int /*<<< orphan*/  csvn; int /*<<< orphan*/  cfvn; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 scalar_t__ cf_diag_cpu_speed ; 
 int /*<<< orphan*/  cpu_cf_events ; 
 int /*<<< orphan*/  FUNC0 (struct cpuid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cpu_cf_events* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tod_clock_base ; 

__attribute__((used)) static void FUNC4(struct cf_trailer_entry *te)
{
	struct cpu_cf_events *cpuhw = FUNC3(&cpu_cf_events);
	struct cpuid cpuid;

	te->cfvn = cpuhw->info.cfvn;		/* Counter version numbers */
	te->csvn = cpuhw->info.csvn;

	FUNC0(&cpuid);			/* Machine type */
	te->mach_type = cpuid.machine;
	te->cpu_speed = cf_diag_cpu_speed;
	if (te->cpu_speed)
		te->speed = 1;
	te->clock_base = 1;			/* Save clock base */
	FUNC1(&te->tod_base, &tod_clock_base[1], 8);
	FUNC2((__u64 *)&te->timestamp);
}