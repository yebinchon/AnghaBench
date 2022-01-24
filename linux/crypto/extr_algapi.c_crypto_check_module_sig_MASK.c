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
struct module {int dummy; } ;

/* Variables and functions */
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct module*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct module *mod)
{
	if (fips_enabled && mod && !FUNC1(mod))
		FUNC2("Module %s signature verification failed in FIPS mode\n",
		      FUNC0(mod));
}