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
struct pkcs7_signed_info {size_t msgdigest_len; int /*<<< orphan*/  aa_set; void const* msgdigest; int /*<<< orphan*/  signing_time; int /*<<< orphan*/  index; } ;
struct pkcs7_parse_context {int last_oid; TYPE_1__* msg; struct pkcs7_signed_info* sinfo; } ;
typedef  enum OID { ____Placeholder_OID } OID ;
struct TYPE_2__ {int data_type; } ;

/* Variables and functions */
 unsigned char ASN1_OTS ; 
 int EBADMSG ; 
 int EKEYREJECTED ; 
#define  OID_contentType 133 
#define  OID_messageDigest 132 
 int OID_msIndirectData ; 
#define  OID_msSpOpusInfo 131 
#define  OID_msStatementType 130 
#define  OID_signingTime 129 
#define  OID_smimeCapabilites 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char,size_t,unsigned int,void const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  sinfo_has_content_type ; 
 int /*<<< orphan*/  sinfo_has_message_digest ; 
 int /*<<< orphan*/  sinfo_has_ms_opus_info ; 
 int /*<<< orphan*/  sinfo_has_ms_statement_type ; 
 int /*<<< orphan*/  sinfo_has_signing_time ; 
 int /*<<< orphan*/  sinfo_has_smime_caps ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t,unsigned char,void const*,size_t) ; 

int FUNC5(void *context, size_t hdrlen,
				      unsigned char tag,
				      const void *value, size_t vlen)
{
	struct pkcs7_parse_context *ctx = context;
	struct pkcs7_signed_info *sinfo = ctx->sinfo;
	enum OID content_type;

	FUNC2("AuthAttr: %02x %zu [%*ph]\n", tag, vlen, (unsigned)vlen, value);

	switch (ctx->last_oid) {
	case OID_contentType:
		if (FUNC0(sinfo_has_content_type, &sinfo->aa_set))
			goto repeated;
		content_type = FUNC1(value, vlen);
		if (content_type != ctx->msg->data_type) {
			FUNC3("Mismatch between global data type (%d) and sinfo %u (%d)\n",
				ctx->msg->data_type, sinfo->index,
				content_type);
			return -EBADMSG;
		}
		return 0;

	case OID_signingTime:
		if (FUNC0(sinfo_has_signing_time, &sinfo->aa_set))
			goto repeated;
		/* Should we check that the signing time is consistent
		 * with the signer's X.509 cert?
		 */
		return FUNC4(&sinfo->signing_time,
					hdrlen, tag, value, vlen);

	case OID_messageDigest:
		if (FUNC0(sinfo_has_message_digest, &sinfo->aa_set))
			goto repeated;
		if (tag != ASN1_OTS)
			return -EBADMSG;
		sinfo->msgdigest = value;
		sinfo->msgdigest_len = vlen;
		return 0;

	case OID_smimeCapabilites:
		if (FUNC0(sinfo_has_smime_caps, &sinfo->aa_set))
			goto repeated;
		if (ctx->msg->data_type != OID_msIndirectData) {
			FUNC3("S/MIME Caps only allowed with Authenticode\n");
			return -EKEYREJECTED;
		}
		return 0;

		/* Microsoft SpOpusInfo seems to be contain cont[0] 16-bit BE
		 * char URLs and cont[1] 8-bit char URLs.
		 *
		 * Microsoft StatementType seems to contain a list of OIDs that
		 * are also used as extendedKeyUsage types in X.509 certs.
		 */
	case OID_msSpOpusInfo:
		if (FUNC0(sinfo_has_ms_opus_info, &sinfo->aa_set))
			goto repeated;
		goto authenticode_check;
	case OID_msStatementType:
		if (FUNC0(sinfo_has_ms_statement_type, &sinfo->aa_set))
			goto repeated;
	authenticode_check:
		if (ctx->msg->data_type != OID_msIndirectData) {
			FUNC3("Authenticode AuthAttrs only allowed with Authenticode\n");
			return -EKEYREJECTED;
		}
		/* I'm not sure how to validate these */
		return 0;
	default:
		return 0;
	}

repeated:
	/* We permit max one item per AuthenticatedAttribute and no repeats */
	FUNC3("Repeated/multivalue AuthAttrs not permitted\n");
	return -EKEYREJECTED;
}