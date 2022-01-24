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
struct credential {int configured; int /*<<< orphan*/  path; int /*<<< orphan*/  protocol; int /*<<< orphan*/  use_http_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  credential_config_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct credential*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct credential *c)
{
	if (c->configured)
		return;
	FUNC1(credential_config_callback, c);
	c->configured = 1;

	if (!c->use_http_path && FUNC2(c->protocol)) {
		FUNC0(c->path);
	}
}