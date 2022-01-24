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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  rerere_autoupdate ; 
 int /*<<< orphan*/  rerere_enabled ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1("rerere.enabled", &rerere_enabled);
	FUNC1("rerere.autoupdate", &rerere_autoupdate);
	FUNC0(git_default_config, NULL);
}