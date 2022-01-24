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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 

int FUNC18 (const char *const private_key_name, void *input, int ilen, void **output, int *olen) {
  FUNC17 (3, "rsa_encrypt (private_key_name = %s, ilen = %d)\n", private_key_name, ilen);
  int err = 0;
  RSA *privKey = NULL;
  *output = NULL;
  *olen = -1;
  FILE *f = FUNC12 (private_key_name, "rb");
  if (f == NULL) {
    FUNC14 ("Couldn't open private key file: %s\n", private_key_name);
    return -1;
  }
  privKey = FUNC6 (f, NULL, NULL, NULL);
  if (privKey == NULL) {
    FUNC14 ("PEM_read_RSAPrivateKey returns NULL.\n");
    err = -2;
    goto clean;
  }
  FUNC11 (f);
  f = NULL;
  unsigned char key[32], iv[32];
  FUNC13 (key, iv);
  const int rsa_size = FUNC9 (privKey);
  *olen = 4 + rsa_size + 32 + ilen + AES_BLOCK_SIZE;
  unsigned char *b = *output = FUNC15 (*olen);

  FUNC16 (b, &rsa_size, 4);
  if (!FUNC8 (32, key, b + 4, privKey, RSA_PKCS1_PADDING)) {
    FUNC14 ("RSA_private_encrypt fail.\n");
    err = -3;
    goto clean;
  }
  FUNC16 (b + 4 + rsa_size, iv, 32);
  EVP_CIPHER_CTX e;
  FUNC1 (&e);
  FUNC3 (&e, FUNC5(), NULL, key, iv);
  int c_len, f_len;
  FUNC4 (&e, b + 4 + rsa_size + 32, &c_len, input, ilen);
  FUNC2 (&e, b + 4 + rsa_size + 32 + c_len, &f_len);
  FUNC0 (&e);
  int r = 4 + rsa_size + 32 + c_len + f_len;
  FUNC17 (3, "c_len = %d, f_len = %d\n", c_len, f_len);
  FUNC10 (r <= *olen);
  *olen = r;
  clean:
  if (f != NULL) {
    FUNC11 (f);
  }
  if (privKey) {
    FUNC7 (privKey);
  }

  return err;
}