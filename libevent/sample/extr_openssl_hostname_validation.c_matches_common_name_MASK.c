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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ CURL_HOST_MATCH ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  Error ; 
 int /*<<< orphan*/  MalformedCertificate ; 
 int /*<<< orphan*/  MatchFound ; 
 int /*<<< orphan*/  MatchNotFound ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static HostnameValidationResult FUNC8(const char *hostname, const X509 *server_cert) {
        int common_name_loc = -1;
        X509_NAME_ENTRY *common_name_entry = NULL;
        ASN1_STRING *common_name_asn1 = NULL;
        const char *common_name_str = NULL;

        // Find the position of the CN field in the Subject field of the certificate
        common_name_loc = FUNC5(FUNC6((X509 *) server_cert), NID_commonName, -1);
        if (common_name_loc < 0) {
                return Error;
        }

        // Extract the CN field
        common_name_entry = FUNC4(FUNC6((X509 *) server_cert), common_name_loc);
        if (common_name_entry == NULL) {
                return Error;
        }

        // Convert the CN field to a C string
        common_name_asn1 = FUNC3(common_name_entry);
        if (common_name_asn1 == NULL) {
                return Error;
        }
        common_name_str = (char *) FUNC0(common_name_asn1);

        // Make sure there isn't an embedded NUL character in the CN
        if ((size_t)FUNC1(common_name_asn1) != FUNC7(common_name_str)) {
                return MalformedCertificate;
        }

        // Compare expected hostname with the CN
        if (FUNC2(common_name_str, hostname) == CURL_HOST_MATCH) {
                return MatchFound;
        }
        else {
                return MatchNotFound;
        }
}