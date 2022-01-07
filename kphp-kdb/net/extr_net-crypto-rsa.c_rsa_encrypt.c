
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int FILE ;
typedef int EVP_CIPHER_CTX ;


 int AES_BLOCK_SIZE ;
 int EVP_CIPHER_CTX_cleanup (int *) ;
 int EVP_CIPHER_CTX_init (int *) ;
 int EVP_EncryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_EncryptInit_ex (int *,int ,int *,unsigned char*,unsigned char*) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,void*,int) ;
 int EVP_aes_256_cbc () ;
 int * PEM_read_RSAPrivateKey (int *,int *,int *,int *) ;
 int RSA_PKCS1_PADDING ;
 int RSA_free (int *) ;
 int RSA_private_encrypt (int,unsigned char*,unsigned char*,int *,int ) ;
 int RSA_size (int *) ;
 int assert (int) ;
 int fclose (int *) ;
 int * fopen (char const* const,char*) ;
 int generate_aes_key (unsigned char*,unsigned char*) ;
 int kprintf (char*,...) ;
 void* malloc (int) ;
 int memcpy (unsigned char*,...) ;
 int vkprintf (int,char*,...) ;

int rsa_encrypt (const char *const private_key_name, void *input, int ilen, void **output, int *olen) {
  vkprintf (3, "rsa_encrypt (private_key_name = %s, ilen = %d)\n", private_key_name, ilen);
  int err = 0;
  RSA *privKey = ((void*)0);
  *output = ((void*)0);
  *olen = -1;
  FILE *f = fopen (private_key_name, "rb");
  if (f == ((void*)0)) {
    kprintf ("Couldn't open private key file: %s\n", private_key_name);
    return -1;
  }
  privKey = PEM_read_RSAPrivateKey (f, ((void*)0), ((void*)0), ((void*)0));
  if (privKey == ((void*)0)) {
    kprintf ("PEM_read_RSAPrivateKey returns NULL.\n");
    err = -2;
    goto clean;
  }
  fclose (f);
  f = ((void*)0);
  unsigned char key[32], iv[32];
  generate_aes_key (key, iv);
  const int rsa_size = RSA_size (privKey);
  *olen = 4 + rsa_size + 32 + ilen + AES_BLOCK_SIZE;
  unsigned char *b = *output = malloc (*olen);

  memcpy (b, &rsa_size, 4);
  if (!RSA_private_encrypt (32, key, b + 4, privKey, RSA_PKCS1_PADDING)) {
    kprintf ("RSA_private_encrypt fail.\n");
    err = -3;
    goto clean;
  }
  memcpy (b + 4 + rsa_size, iv, 32);
  EVP_CIPHER_CTX e;
  EVP_CIPHER_CTX_init (&e);
  EVP_EncryptInit_ex (&e, EVP_aes_256_cbc(), ((void*)0), key, iv);
  int c_len, f_len;
  EVP_EncryptUpdate (&e, b + 4 + rsa_size + 32, &c_len, input, ilen);
  EVP_EncryptFinal_ex (&e, b + 4 + rsa_size + 32 + c_len, &f_len);
  EVP_CIPHER_CTX_cleanup (&e);
  int r = 4 + rsa_size + 32 + c_len + f_len;
  vkprintf (3, "c_len = %d, f_len = %d\n", c_len, f_len);
  assert (r <= *olen);
  *olen = r;
  clean:
  if (f != ((void*)0)) {
    fclose (f);
  }
  if (privKey) {
    RSA_free (privKey);
  }

  return err;
}
