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
struct dmi_system_id {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int check_sta_before_sun ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct dmi_system_id *d)
{
	FUNC0("%s detected: will evaluate _STA before calling _SUN\n",
		d->ident);
	check_sta_before_sun = 1;
	return 0;
}