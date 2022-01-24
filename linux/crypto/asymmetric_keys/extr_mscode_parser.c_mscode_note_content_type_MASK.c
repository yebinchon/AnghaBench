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
typedef  enum OID { ____Placeholder_OID } OID ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int EBADMSG ; 
 int OID__NR ; 
 int OID_msIndividualSPKeyPurpose ; 
 int OID_msPeImageDataObjId ; 
 int FUNC0 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void const*,size_t,char*,int) ; 

int FUNC3(void *context, size_t hdrlen,
			     unsigned char tag,
			     const void *value, size_t vlen)
{
	enum OID oid;

	oid = FUNC0(value, vlen);
	if (oid == OID__NR) {
		char buffer[50];

		FUNC2(value, vlen, buffer, sizeof(buffer));
		FUNC1("Unknown OID: %s\n", buffer);
		return -EBADMSG;
	}

	/*
	 * pesign utility had a bug where it was putting
	 * OID_msIndividualSPKeyPurpose instead of OID_msPeImageDataObjId
	 * So allow both OIDs.
	 */
	if (oid != OID_msPeImageDataObjId &&
	    oid != OID_msIndividualSPKeyPurpose) {
		FUNC1("Unexpected content type OID %u\n", oid);
		return -EBADMSG;
	}

	return 0;
}