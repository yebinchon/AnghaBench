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
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  HostnameValidationResult ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  Error ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HostnameValidationResult FUNC5(const char *hostname, const X509 *server_cert) {
	int common_name_loc = -1;
	X509_NAME_ENTRY *common_name_entry = NULL;
	ASN1_STRING *common_name_asn1 = NULL;

	// Find the position of the CN field in the Subject field of the certificate
	common_name_loc = FUNC2(FUNC3((X509 *) server_cert), NID_commonName, -1);
	if (common_name_loc < 0) {
		return Error;
	}

	// Extract the CN field
	common_name_entry = FUNC1(FUNC3((X509 *) server_cert), common_name_loc);
	if (common_name_entry == NULL) {
		return Error;
	}
	common_name_asn1 = FUNC0(common_name_entry);
	if (common_name_asn1 == NULL) {
		return Error;
	}

	// validate the names
	return FUNC4(hostname, common_name_asn1);
}