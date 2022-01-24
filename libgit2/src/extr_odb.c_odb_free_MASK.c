#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* free ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ git_odb_backend ;
struct TYPE_13__ {size_t length; } ;
struct TYPE_12__ {int /*<<< orphan*/  own_cache; TYPE_7__ backends; TYPE_1__* backend; } ;
typedef  TYPE_2__ git_odb ;
typedef  TYPE_2__ backend_internal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 TYPE_2__* FUNC4 (TYPE_7__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(git_odb *db)
{
	size_t i;

	for (i = 0; i < db->backends.length; ++i) {
		backend_internal *internal = FUNC4(&db->backends, i);
		git_odb_backend *backend = internal->backend;

		backend->free(backend);

		FUNC0(internal);
	}

	FUNC3(&db->backends);
	FUNC2(&db->own_cache);

	FUNC1(db, sizeof(*db));
	FUNC0(db);
}