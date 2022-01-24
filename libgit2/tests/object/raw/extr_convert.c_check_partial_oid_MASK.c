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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(
	char *buffer, size_t count, const git_oid *oid, const char *expected)
{
	FUNC1(buffer, count, oid);
	buffer[count] = '\0';
	FUNC0(expected, buffer);
}