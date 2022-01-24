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
typedef  int /*<<< orphan*/  short_hex ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 

void FUNC6(void) {
	const char hex[] = "ce013625030ba8dba906f756967f9e9ca394464a";
	const char short_hex[] = "ce01362";
	git_oid oid;
	git_odb_object *obj;

	FUNC0(FUNC4(&oid, hex));
	FUNC0(FUNC3(&obj, _odb, &oid, GIT_OID_HEXSZ));
	FUNC2(obj);

	FUNC0(FUNC1(NULL, _odb, &oid, GIT_OID_HEXSZ));

	FUNC0(FUNC5(&oid, short_hex, sizeof(short_hex) - 1));
	FUNC0(FUNC3(&obj, _odb, &oid, sizeof(short_hex) - 1));
	FUNC2(obj);

	FUNC0(FUNC1(NULL, _odb, &oid, sizeof(short_hex) - 1));
}