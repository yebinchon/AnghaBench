#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  certificate_check; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EUSER ; 
 int /*<<< orphan*/  _remote_ssh_fingerprint ; 
 int /*<<< orphan*/  _remote_url ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  ssh_certificate_check ; 

void FUNC3(void)
{
	g_options.fetch_opts.callbacks.certificate_check = ssh_certificate_check;

	if (!_remote_ssh_fingerprint)
		FUNC1();

	FUNC0(GIT_EUSER, FUNC2(&g_repo, _remote_url, "./foo", &g_options));
}