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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  cf_poly1305 ;
typedef  int /*<<< orphan*/  const cf_chacha20_ctx ;

/* Variables and functions */
 int ENCRYPT ; 
 int FAILURE ; 
 int FUNC0 (size_t) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (size_t,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC10(const uint8_t key[32],
                   const uint8_t nonce[12],
                   const uint8_t *header, size_t nheader,
                   const uint8_t *input, size_t nbytes,
                   uint8_t *output,
                   int mode,
                   uint8_t tag[16])
{
  /* First, generate the Poly1305 key by running ChaCha20 with the
   * given key and a zero counter.  The first half of the
   * 64-byte output is the key. */
  uint8_t fullnonce[16] = { 0 };
  FUNC8(fullnonce + 4, nonce, 12);

  uint8_t polykey[32] = { 0 };
  cf_chacha20_ctx chacha;
  FUNC2(&chacha, key, 32, fullnonce, 4);
  FUNC1(&chacha, polykey, polykey, sizeof polykey);

  /* Now initialise Poly1305. */
  cf_poly1305 poly;
  FUNC4(&poly, polykey, polykey + 16);
  FUNC6(polykey, sizeof polykey);

  /* Discard next 32 bytes of chacha20 key stream. */
  FUNC1(&chacha, polykey, polykey, sizeof polykey);
  FUNC6(polykey, sizeof polykey);

  /* The input to Poly1305 is:
   * AAD || pad(AAD) || cipher || pad(cipher) || len_64(aad) || len_64(cipher) */
  uint8_t padbuf[16] = { 0 };

#define PADLEN(x) (16 - ((x) & 0xf))

  /* AAD || pad(AAD) */
  FUNC5(&poly, header, nheader);
  FUNC5(&poly, padbuf, PADLEN(nheader));

  /* || cipher */
  if (mode == ENCRYPT)
  {
    /* If we're encrypting, we compute the ciphertext
     * before inputting it into the MAC. */
    FUNC1(&chacha, input, output, nbytes);
    FUNC5(&poly, output, nbytes);
  } else {
    /* Otherwise: decryption -- input the ciphertext.
     * Delay actual decryption until we checked the MAC. */
    FUNC5(&poly, input, nbytes);
  }

  /* || pad(cipher) */
  FUNC5(&poly, padbuf, PADLEN(nbytes));

  /* || len_64(aad) || len_64(cipher) */
  FUNC9(nheader, padbuf);
  FUNC9(nbytes, padbuf + 8);
  FUNC5(&poly, padbuf, sizeof padbuf);

  /* MAC computation is now complete. */

  if (mode == ENCRYPT)
  {
    FUNC3(&poly, tag);
    FUNC6(&chacha, sizeof chacha);
    return SUCCESS;
  }

  /* Decrypt mode: calculate tag, and check it.
   * If it's correct, proceed with decryption. */
  uint8_t checktag[16];
  FUNC3(&poly, checktag);

  if (FUNC7(checktag, tag, sizeof checktag))
  {
    FUNC1(&chacha, input, output, nbytes);
    FUNC6(&chacha, sizeof chacha);
    FUNC6(checktag, sizeof checktag);
    return SUCCESS;
  } else {
    FUNC6(output, nbytes);
    FUNC6(&chacha, sizeof chacha);
    FUNC6(checktag, sizeof checktag);
    return FAILURE;
  }
}