#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(void)
{
	git_oid full;
	git_object *obj;
	git_buf shorty = {0};

	FUNC7(&full, "ce013625030ba8dba906f756967f9e9ca394464a");
	FUNC2(FUNC5(&obj, _repo, &full, GIT_OBJECT_ANY));
	FUNC2(FUNC6(&shorty, obj));
	FUNC0(7, shorty.size);
	FUNC1("ce01362", shorty.ptr);
	FUNC4(obj);

	FUNC7(&full, "038d718da6a1ebbc6a7780a96ed75a70cc2ad6e2");
	FUNC2(FUNC5(&obj, _repo, &full, GIT_OBJECT_ANY));
	FUNC2(FUNC6(&shorty, obj));
	FUNC0(7, shorty.size);
	FUNC1("038d718", shorty.ptr);
	FUNC4(obj);

	FUNC7(&full, "dea509d097ce692e167dfc6a48a7a280cc5e877e");
	FUNC2(FUNC5(&obj, _repo, &full, GIT_OBJECT_ANY));
	FUNC2(FUNC6(&shorty, obj));
	FUNC0(9, shorty.size);
	FUNC1("dea509d09", shorty.ptr);
	FUNC4(obj);

	FUNC7(&full, "dea509d0b3cb8ee0650f6ca210bc83f4678851ba");
	FUNC2(FUNC5(&obj, _repo, &full, GIT_OBJECT_ANY));
	FUNC2(FUNC6(&shorty, obj));
	FUNC0(9, shorty.size);
	FUNC1("dea509d0b", shorty.ptr);
	FUNC4(obj);

	FUNC3(&shorty);
}