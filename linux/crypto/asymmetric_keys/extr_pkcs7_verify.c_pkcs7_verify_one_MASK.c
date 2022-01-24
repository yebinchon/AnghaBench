#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pkcs7_signed_info {scalar_t__ signing_time; int /*<<< orphan*/  index; int /*<<< orphan*/  sig; TYPE_1__* signer; int /*<<< orphan*/  aa_set; } ;
struct pkcs7_message {int dummy; } ;
struct TYPE_2__ {scalar_t__ valid_from; scalar_t__ valid_to; int /*<<< orphan*/  pub; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EKEYREJECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pkcs7_message*,struct pkcs7_signed_info*) ; 
 int FUNC2 (struct pkcs7_message*,struct pkcs7_signed_info*) ; 
 int FUNC3 (struct pkcs7_message*,struct pkcs7_signed_info*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sinfo_has_signing_time ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pkcs7_message *pkcs7,
			    struct pkcs7_signed_info *sinfo)
{
	int ret;

	FUNC0(",%u", sinfo->index);

	/* First of all, digest the data in the PKCS#7 message and the
	 * signed information block
	 */
	ret = FUNC1(pkcs7, sinfo);
	if (ret < 0)
		return ret;

	/* Find the key for the signature if there is one */
	ret = FUNC2(pkcs7, sinfo);
	if (ret < 0)
		return ret;

	if (!sinfo->signer)
		return 0;

	FUNC4("Using X.509[%u] for sig %u\n",
		 sinfo->signer->index, sinfo->index);

	/* Check that the PKCS#7 signing time is valid according to the X.509
	 * certificate.  We can't, however, check against the system clock
	 * since that may not have been set yet and may be wrong.
	 */
	if (FUNC7(sinfo_has_signing_time, &sinfo->aa_set)) {
		if (sinfo->signing_time < sinfo->signer->valid_from ||
		    sinfo->signing_time > sinfo->signer->valid_to) {
			FUNC5("Message signed outside of X.509 validity window\n");
			return -EKEYREJECTED;
		}
	}

	/* Verify the PKCS#7 binary against the key */
	ret = FUNC6(sinfo->signer->pub, sinfo->sig);
	if (ret < 0)
		return ret;

	FUNC4("Verified signature %u\n", sinfo->index);

	/* Verify the internal certificate chain */
	return FUNC3(pkcs7, sinfo);
}