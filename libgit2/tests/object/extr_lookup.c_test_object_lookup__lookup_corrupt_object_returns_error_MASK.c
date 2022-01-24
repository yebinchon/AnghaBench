#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_7__ {int* ptr; size_t size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	const char *commit = "8e73b769e97678d684b809b163bebdae2911720f",
	      *file = "objects/8e/73b769e97678d684b809b163bebdae2911720f";
	git_buf path = GIT_BUF_INIT, contents = GIT_BUF_INIT;
	git_oid oid;
	git_object *object;
	size_t i;

	FUNC1(FUNC8(&oid, commit));
	FUNC1(FUNC3(&path, FUNC9(g_repo), file));
	FUNC1(FUNC4(&contents, path.ptr));

	/* Corrupt and try to read the object */
	for (i = 0; i < contents.size; i++) {
		contents.ptr[i] ^= 0x1;
		FUNC1(FUNC5(&contents, path.ptr, O_RDWR, 0644));
		FUNC0(FUNC7(&object, g_repo, &oid, GIT_OBJECT_COMMIT));
		contents.ptr[i] ^= 0x1;
	}

	/* Restore original content and assert we can read the object */
	FUNC1(FUNC5(&contents, path.ptr, O_RDWR, 0644));
	FUNC1(FUNC7(&object, g_repo, &oid, GIT_OBJECT_COMMIT));

	FUNC6(object);
	FUNC2(&path);
	FUNC2(&contents);
}