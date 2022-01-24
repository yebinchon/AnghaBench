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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {TYPE_1__* db; } ;
typedef  TYPE_2__ git_reference ;
struct TYPE_5__ {int /*<<< orphan*/ * repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 

git_repository *FUNC1(const git_reference *ref)
{
	FUNC0(ref);
	return ref->db->repo;
}