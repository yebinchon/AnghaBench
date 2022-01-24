#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  certificate_check; } ;
struct TYPE_7__ {TYPE_1__ callbacks; } ;
struct TYPE_8__ {TYPE_2__ fetch_opts; } ;
typedef  TYPE_3__ git_clone_options ;

/* Variables and functions */
 TYPE_3__ GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ECERTIFICATE ; 
 int /*<<< orphan*/  cert_check_assert_invalid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  g_has_ssl ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,TYPE_3__*) ; 

void FUNC3(void)
{
	git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
	opts.fetch_opts.callbacks.certificate_check = cert_check_assert_invalid;

	if (!g_has_ssl)
		FUNC1();

	FUNC0(GIT_ECERTIFICATE,
			 FUNC2(&g_repo, "https://self-signed.badssl.com/fake.git", "./fake", NULL));
	FUNC0(GIT_ECERTIFICATE,
			 FUNC2(&g_repo, "https://self-signed.badssl.com/fake.git", "./fake", &opts));
}