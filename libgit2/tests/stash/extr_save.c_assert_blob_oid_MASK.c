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
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const char* revision, const char* expected_oid)
{
	FUNC0(revision, expected_oid, GIT_OBJECT_BLOB);
}