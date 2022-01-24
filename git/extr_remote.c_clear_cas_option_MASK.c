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
struct push_cas_option {int nr; TYPE_1__* entry; } ;
struct TYPE_2__ {struct TYPE_2__* refname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct push_cas_option*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct push_cas_option *cas)
{
	int i;

	for (i = 0; i < cas->nr; i++)
		FUNC0(cas->entry[i].refname);
	FUNC0(cas->entry);
	FUNC1(cas, 0, sizeof(*cas));
}