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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(int error, const git_oid *oid, git_object_t type)
{
	const char *type_name;
	char hex_oid[GIT_OID_HEXSZ + 1];

	type_name = FUNC1(type);

	FUNC2(hex_oid, oid);
	hex_oid[GIT_OID_HEXSZ] = '\0';

	FUNC0(GIT_ERROR_OBJECT, "the git_object of id '%s' can not be "
		"successfully peeled into a %s (git_object_t=%i).", hex_oid, type_name, type);

	return error;
}