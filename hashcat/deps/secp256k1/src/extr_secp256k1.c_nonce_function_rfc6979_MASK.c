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
typedef  int /*<<< orphan*/  secp256k1_rfc6979_hmac_sha256 ;
typedef  int /*<<< orphan*/  keydata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned char *nonce32, const unsigned char *msg32, const unsigned char *key32, const unsigned char *algo16, void *data, unsigned int counter) {
   unsigned char keydata[112];
   unsigned int offset = 0;
   secp256k1_rfc6979_hmac_sha256 rng;
   unsigned int i;
   /* We feed a byte array to the PRNG as input, consisting of:
    * - the private key (32 bytes) and message (32 bytes), see RFC 6979 3.2d.
    * - optionally 32 extra bytes of data, see RFC 6979 3.6 Additional Data.
    * - optionally 16 extra bytes with the algorithm name.
    * Because the arguments have distinct fixed lengths it is not possible for
    *  different argument mixtures to emulate each other and result in the same
    *  nonces.
    */
   FUNC0(keydata, &offset, key32, 32);
   FUNC0(keydata, &offset, msg32, 32);
   if (data != NULL) {
       FUNC0(keydata, &offset, data, 32);
   }
   if (algo16 != NULL) {
       FUNC0(keydata, &offset, algo16, 16);
   }
   FUNC4(&rng, keydata, offset);
   FUNC1(keydata, 0, sizeof(keydata));
   for (i = 0; i <= counter; i++) {
       FUNC3(&rng, nonce32, 32);
   }
   FUNC2(&rng);
   return 1;
}