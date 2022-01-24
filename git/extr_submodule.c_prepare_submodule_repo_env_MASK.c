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
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_GIT_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 

void FUNC2(struct argv_array *out)
{
	FUNC1(out);
	FUNC0(out, "%s=%s", GIT_DIR_ENVIRONMENT,
			 DEFAULT_GIT_DIR_ENVIRONMENT);
}