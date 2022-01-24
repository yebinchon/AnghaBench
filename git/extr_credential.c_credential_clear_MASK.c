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
struct credential {int /*<<< orphan*/  helpers; int /*<<< orphan*/  password; int /*<<< orphan*/  username; int /*<<< orphan*/  path; int /*<<< orphan*/  host; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct credential*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct credential *c)
{
	FUNC1(c->protocol);
	FUNC1(c->host);
	FUNC1(c->path);
	FUNC1(c->username);
	FUNC1(c->password);
	FUNC2(&c->helpers, 0);

	FUNC0(c);
}