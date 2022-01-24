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
struct x509_certificate {char* raw_skid; size_t raw_skid_size; size_t raw_serial_size; char* raw_serial; struct asymmetric_key_ids* sig; int /*<<< orphan*/ * skid; int /*<<< orphan*/ * id; struct asymmetric_key_ids* pub; int /*<<< orphan*/  subject; scalar_t__ blacklisted; scalar_t__ unsupported_sig; int /*<<< orphan*/  valid_to; int /*<<< orphan*/  valid_from; scalar_t__ unsupported_key; int /*<<< orphan*/  issuer; } ;
struct TYPE_2__ {struct asymmetric_key_ids** data; } ;
struct key_preparsed_payload {char* description; int quotalen; TYPE_1__ payload; int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; } ;
struct asymmetric_key_ids {char* id_type; int /*<<< orphan*/  owner; int /*<<< orphan*/ ** id; int /*<<< orphan*/  hash_algo; int /*<<< orphan*/  pkey_algo; } ;

/* Variables and functions */
 int EKEYREJECTED ; 
 int ENOMEM ; 
 int ENOPKG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct x509_certificate*) ; 
 int FUNC1 (struct x509_certificate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t asym_auth ; 
 size_t asym_crypto ; 
 size_t asym_key_ids ; 
 size_t asym_subtype ; 
 char* FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (struct asymmetric_key_ids*) ; 
 struct asymmetric_key_ids public_key_subtype ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 struct x509_certificate* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct x509_certificate*) ; 

__attribute__((used)) static int FUNC12(struct key_preparsed_payload *prep)
{
	struct asymmetric_key_ids *kids;
	struct x509_certificate *cert;
	const char *q;
	size_t srlen, sulen;
	char *desc = NULL, *p;
	int ret;

	cert = FUNC10(prep->data, prep->datalen);
	if (FUNC0(cert))
		return FUNC1(cert);

	FUNC7("Cert Issuer: %s\n", cert->issuer);
	FUNC7("Cert Subject: %s\n", cert->subject);

	if (cert->unsupported_key) {
		ret = -ENOPKG;
		goto error_free_cert;
	}

	FUNC7("Cert Key Algo: %s\n", cert->pub->pkey_algo);
	FUNC7("Cert Valid period: %lld-%lld\n", cert->valid_from, cert->valid_to);

	cert->pub->id_type = "X509";

	if (cert->unsupported_sig) {
		FUNC8(cert->sig);
		cert->sig = NULL;
	} else {
		FUNC7("Cert Signature: %s + %s\n",
			 cert->sig->pkey_algo, cert->sig->hash_algo);
	}

	/* Don't permit addition of blacklisted keys */
	ret = -EKEYREJECTED;
	if (cert->blacklisted)
		goto error_free_cert;

	/* Propose a description */
	sulen = FUNC9(cert->subject);
	if (cert->raw_skid) {
		srlen = cert->raw_skid_size;
		q = cert->raw_skid;
	} else {
		srlen = cert->raw_serial_size;
		q = cert->raw_serial;
	}

	ret = -ENOMEM;
	desc = FUNC5(sulen + 2 + srlen * 2 + 1, GFP_KERNEL);
	if (!desc)
		goto error_free_cert;
	p = FUNC6(desc, cert->subject, sulen);
	p += sulen;
	*p++ = ':';
	*p++ = ' ';
	p = FUNC3(p, q, srlen);
	*p = 0;

	kids = FUNC5(sizeof(struct asymmetric_key_ids), GFP_KERNEL);
	if (!kids)
		goto error_free_desc;
	kids->id[0] = cert->id;
	kids->id[1] = cert->skid;

	/* We're pinning the module by being linked against it */
	FUNC2(public_key_subtype.owner);
	prep->payload.data[asym_subtype] = &public_key_subtype;
	prep->payload.data[asym_key_ids] = kids;
	prep->payload.data[asym_crypto] = cert->pub;
	prep->payload.data[asym_auth] = cert->sig;
	prep->description = desc;
	prep->quotalen = 100;

	/* We've finished with the certificate */
	cert->pub = NULL;
	cert->id = NULL;
	cert->skid = NULL;
	cert->sig = NULL;
	desc = NULL;
	ret = 0;

error_free_desc:
	FUNC4(desc);
error_free_cert:
	FUNC11(cert);
	return ret;
}