#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ntlm_client {int dummy; } ;
typedef  int /*<<< orphan*/  ntlm_unicode_ctx ;
typedef  int /*<<< orphan*/  ntlm_hmac_ctx ;
typedef  int /*<<< orphan*/  ntlm_client_flags ;
struct TYPE_11__ {int /*<<< orphan*/  buf; } ;
struct TYPE_10__ {int /*<<< orphan*/  target_server_dns; int /*<<< orphan*/  target_server; int /*<<< orphan*/  target_domain_dns; int /*<<< orphan*/  target_domain; int /*<<< orphan*/  target; int /*<<< orphan*/  target_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  buf; } ;
struct TYPE_12__ {int /*<<< orphan*/ * unicode_ctx; int /*<<< orphan*/ * hmac_ctx; int /*<<< orphan*/  flags; int /*<<< orphan*/  ntlm2_response; int /*<<< orphan*/  target_utf16; int /*<<< orphan*/  target; int /*<<< orphan*/  hostdomain; int /*<<< orphan*/  hostname_utf16; int /*<<< orphan*/  hostname; TYPE_3__ response; TYPE_2__ challenge; TYPE_1__ negotiate; } ;
typedef  TYPE_4__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(ntlm_client *ntlm)
{
	ntlm_client_flags flags;
	ntlm_hmac_ctx *hmac_ctx;
	ntlm_unicode_ctx *unicode_ctx;

	FUNC0(ntlm);

	FUNC1(ntlm->negotiate.buf);
	FUNC1(ntlm->challenge.target_info);
	FUNC1(ntlm->challenge.target);
	FUNC1(ntlm->challenge.target_domain);
	FUNC1(ntlm->challenge.target_domain_dns);
	FUNC1(ntlm->challenge.target_server);
	FUNC1(ntlm->challenge.target_server_dns);
	FUNC1(ntlm->response.buf);

	FUNC1(ntlm->hostname);
	FUNC1(ntlm->hostname_utf16);
	FUNC1(ntlm->hostdomain);

	FUNC1(ntlm->target);
	FUNC1(ntlm->target_utf16);

	FUNC1(ntlm->ntlm2_response);

	FUNC2(ntlm);

	flags = ntlm->flags;
	hmac_ctx = ntlm->hmac_ctx;
	unicode_ctx = ntlm->unicode_ctx;

	FUNC3(ntlm, 0, sizeof(struct ntlm_client));

	ntlm->flags = flags;
	ntlm->hmac_ctx = hmac_ctx;
	ntlm->unicode_ctx = unicode_ctx;
}