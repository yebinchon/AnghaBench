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
struct x509_certificate {int seen; int verified; struct x509_certificate* signer; int /*<<< orphan*/  index; struct public_key_signature* sig; int /*<<< orphan*/ * skid; int /*<<< orphan*/ * id; } ;
struct public_key_signature {int /*<<< orphan*/ ** auth_ids; } ;
struct pkcs7_signed_info {struct x509_certificate* signer; struct public_key_signature* sig; int /*<<< orphan*/  index; scalar_t__ unsupported_crypto; } ;
struct pkcs7_message {int dummy; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int EKEYREJECTED ; 
 int ENOKEY ; 
 int ENOMEM ; 
 int ENOPKG ; 
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 struct key* FUNC3 (struct key*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC10 (struct key*,struct public_key_signature*) ; 

__attribute__((used)) static int FUNC11(struct pkcs7_message *pkcs7,
				    struct pkcs7_signed_info *sinfo,
				    struct key *trust_keyring)
{
	struct public_key_signature *sig = sinfo->sig;
	struct x509_certificate *x509, *last = NULL, *p;
	struct key *key;
	int ret;

	FUNC4(",%u,", sinfo->index);

	if (sinfo->unsupported_crypto) {
		FUNC7(" = -ENOPKG [cached]");
		return -ENOPKG;
	}

	for (x509 = sinfo->signer; x509; x509 = x509->signer) {
		if (x509->seen) {
			if (x509->verified)
				goto verified;
			FUNC7(" = -ENOKEY [cached]");
			return -ENOKEY;
		}
		x509->seen = true;

		/* Look to see if this certificate is present in the trusted
		 * keys.
		 */
		key = FUNC3(trust_keyring,
					  x509->id, x509->skid, false);
		if (!FUNC1(key)) {
			/* One of the X.509 certificates in the PKCS#7 message
			 * is apparently the same as one we already trust.
			 * Verify that the trusted variant can also validate
			 * the signature on the descendant.
			 */
			FUNC9("sinfo %u: Cert %u as key %x\n",
				 sinfo->index, x509->index, FUNC6(key));
			goto matched;
		}
		if (key == FUNC0(-ENOMEM))
			return -ENOMEM;

		 /* Self-signed certificates form roots of their own, and if we
		  * don't know them, then we can't accept them.
		  */
		if (x509->signer == x509) {
			FUNC7(" = -ENOKEY [unknown self-signed]");
			return -ENOKEY;
		}

		FUNC8();
		last = x509;
		sig = last->sig;
	}

	/* No match - see if the root certificate has a signer amongst the
	 * trusted keys.
	 */
	if (last && (last->sig->auth_ids[0] || last->sig->auth_ids[1])) {
		key = FUNC3(trust_keyring,
					  last->sig->auth_ids[0],
					  last->sig->auth_ids[1],
					  false);
		if (!FUNC1(key)) {
			x509 = last;
			FUNC9("sinfo %u: Root cert %u signer is key %x\n",
				 sinfo->index, x509->index, FUNC6(key));
			goto matched;
		}
		if (FUNC2(key) != -ENOKEY)
			return FUNC2(key);
	}

	/* As a last resort, see if we have a trusted public key that matches
	 * the signed info directly.
	 */
	key = FUNC3(trust_keyring,
				  sinfo->sig->auth_ids[0], NULL, false);
	if (!FUNC1(key)) {
		FUNC9("sinfo %u: Direct signer is key %x\n",
			 sinfo->index, FUNC6(key));
		x509 = NULL;
		sig = sinfo->sig;
		goto matched;
	}
	if (FUNC2(key) != -ENOKEY)
		return FUNC2(key);

	FUNC7(" = -ENOKEY [no backref]");
	return -ENOKEY;

matched:
	ret = FUNC10(key, sig);
	FUNC5(key);
	if (ret < 0) {
		if (ret == -ENOMEM)
			return ret;
		FUNC7(" = -EKEYREJECTED [verify %d]", ret);
		return -EKEYREJECTED;
	}

verified:
	if (x509) {
		x509->verified = true;
		for (p = sinfo->signer; p != x509; p = p->signer)
			p->verified = true;
	}
	FUNC7(" = 0");
	return 0;
}