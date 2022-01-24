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
typedef  int /*<<< orphan*/  X509 ;
typedef  scalar_t__ HostnameValidationResult ;

/* Variables and functions */
 scalar_t__ Error ; 
 scalar_t__ NoSANPresent ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/  const*) ; 

HostnameValidationResult FUNC2(const char *hostname, const X509 *server_cert) {
        HostnameValidationResult result;

        if((hostname == NULL) || (server_cert == NULL))
                return Error;

        // First try the Subject Alternative Names extension
        result = FUNC1(hostname, server_cert);
        if (result == NoSANPresent) {
                // Extension was not found: try the Common Name
                result = FUNC0(hostname, server_cert);
        }

        return result;
}