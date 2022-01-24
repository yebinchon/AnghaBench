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
typedef  int /*<<< orphan*/  secp256k1_ecdsa_signature ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,unsigned char const*,int) ; 

int FUNC1(const secp256k1_ecdsa_signature *sig) {
    static const unsigned char res[sizeof(secp256k1_ecdsa_signature)] = {0};
    return FUNC0(sig, res, sizeof(secp256k1_ecdsa_signature)) == 0;
}