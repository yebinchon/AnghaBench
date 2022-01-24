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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,void*) ; 

__attribute__((used)) static int FUNC2(
	const char *path, const char *matched_pathspec, void *payload)
{
	FUNC0(matched_pathspec);
	return !FUNC1(path, payload) ? 0 : 1;
}