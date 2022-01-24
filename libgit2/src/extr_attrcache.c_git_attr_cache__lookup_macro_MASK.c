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
typedef  int /*<<< orphan*/  git_strmap ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_attr_rule ;
struct TYPE_2__ {int /*<<< orphan*/ * macros; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 

git_attr_rule *FUNC2(
	git_repository *repo, const char *name)
{
	git_strmap *macros = FUNC0(repo)->macros;

	return FUNC1(macros, name);
}