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
typedef  int u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct public_key_signature {scalar_t__ digest_size; scalar_t__ digest; int /*<<< orphan*/  hash_algo; } ;
struct pkcs7_signed_info {scalar_t__ msgdigest_len; int /*<<< orphan*/  authattrs_len; int /*<<< orphan*/  authattrs; int /*<<< orphan*/  index; int /*<<< orphan*/  msgdigest; struct public_key_signature* sig; } ;
struct pkcs7_message {int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int ASN1_CONS_BIT ; 
 int ASN1_SET ; 
 int EBADMSG ; 
 int EKEYREJECTED ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOPKG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_shash*) ; 
 int FUNC4 (struct crypto_shash*) ; 
 int FUNC5 (struct shash_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct crypto_shash*) ; 
 int FUNC7 (struct shash_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct shash_desc*) ; 
 int FUNC9 (struct shash_desc*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct shash_desc* FUNC14 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct pkcs7_message *pkcs7,
			struct pkcs7_signed_info *sinfo)
{
	struct public_key_signature *sig = sinfo->sig;
	struct crypto_shash *tfm;
	struct shash_desc *desc;
	size_t desc_size;
	int ret;

	FUNC10(",%u,%s", sinfo->index, sinfo->sig->hash_algo);

	/* The digest was calculated already. */
	if (sig->digest)
		return 0;

	if (!sinfo->sig->hash_algo)
		return -ENOPKG;

	/* Allocate the hashing algorithm we're going to need and find out how
	 * big the hash operational data will be.
	 */
	tfm = FUNC2(sinfo->sig->hash_algo, 0, 0);
	if (FUNC0(tfm))
		return (FUNC1(tfm) == -ENOENT) ? -ENOPKG : FUNC1(tfm);

	desc_size = FUNC4(tfm) + sizeof(*desc);
	sig->digest_size = FUNC6(tfm);

	ret = -ENOMEM;
	sig->digest = FUNC13(sig->digest_size, GFP_KERNEL);
	if (!sig->digest)
		goto error_no_desc;

	desc = FUNC14(desc_size, GFP_KERNEL);
	if (!desc)
		goto error_no_desc;

	desc->tfm   = tfm;

	/* Digest the message [RFC2315 9.3] */
	ret = FUNC5(desc, pkcs7->data, pkcs7->data_len,
				  sig->digest);
	if (ret < 0)
		goto error;
	FUNC18("MsgDigest = [%*ph]\n", 8, sig->digest);

	/* However, if there are authenticated attributes, there must be a
	 * message digest attribute amongst them which corresponds to the
	 * digest we just calculated.
	 */
	if (sinfo->authattrs) {
		u8 tag;

		if (!sinfo->msgdigest) {
			FUNC19("Sig %u: No messageDigest\n", sinfo->index);
			ret = -EKEYREJECTED;
			goto error;
		}

		if (sinfo->msgdigest_len != sig->digest_size) {
			FUNC17("Sig %u: Invalid digest size (%u)\n",
				 sinfo->index, sinfo->msgdigest_len);
			ret = -EBADMSG;
			goto error;
		}

		if (FUNC15(sig->digest, sinfo->msgdigest,
			   sinfo->msgdigest_len) != 0) {
			FUNC17("Sig %u: Message digest doesn't match\n",
				 sinfo->index);
			ret = -EKEYREJECTED;
			goto error;
		}

		/* We then calculate anew, using the authenticated attributes
		 * as the contents of the digest instead.  Note that we need to
		 * convert the attributes from a CONT.0 into a SET before we
		 * hash it.
		 */
		FUNC16(sig->digest, 0, sig->digest_size);

		ret = FUNC8(desc);
		if (ret < 0)
			goto error;
		tag = ASN1_CONS_BIT | ASN1_SET;
		ret = FUNC9(desc, &tag, 1);
		if (ret < 0)
			goto error;
		ret = FUNC7(desc, sinfo->authattrs,
					 sinfo->authattrs_len, sig->digest);
		if (ret < 0)
			goto error;
		FUNC18("AADigest = [%*ph]\n", 8, sig->digest);
	}

error:
	FUNC11(desc);
error_no_desc:
	FUNC3(tfm);
	FUNC12(" = %d", ret);
	return ret;
}