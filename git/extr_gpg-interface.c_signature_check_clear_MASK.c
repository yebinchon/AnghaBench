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
struct signature_check {int /*<<< orphan*/  primary_key_fingerprint; int /*<<< orphan*/  fingerprint; int /*<<< orphan*/  key; int /*<<< orphan*/  signer; int /*<<< orphan*/  gpg_status; int /*<<< orphan*/  gpg_output; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct signature_check *sigc)
{
	FUNC0(sigc->payload);
	FUNC0(sigc->gpg_output);
	FUNC0(sigc->gpg_status);
	FUNC0(sigc->signer);
	FUNC0(sigc->key);
	FUNC0(sigc->fingerprint);
	FUNC0(sigc->primary_key_fingerprint);
}