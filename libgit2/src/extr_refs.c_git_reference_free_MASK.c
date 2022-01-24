#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* symbolic; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ db; TYPE_1__ target; } ;
typedef  TYPE_2__ git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  git_refdb__free ; 

void FUNC2(git_reference *reference)
{
	if (reference == NULL)
		return;

	if (reference->type == GIT_REFERENCE_SYMBOLIC)
		FUNC1(reference->target.symbolic);

	if (reference->db)
		FUNC0(reference->db, git_refdb__free);

	FUNC1(reference);
}