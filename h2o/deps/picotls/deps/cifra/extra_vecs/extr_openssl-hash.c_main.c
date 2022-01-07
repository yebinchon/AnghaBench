
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_sha1 () ;
 int EVP_sha224 () ;
 int EVP_sha256 () ;
 int EVP_sha384 () ;
 int EVP_sha512 () ;
 int MAX_LENGTH ;
 int emit_length_test (char*,int ,int ) ;

int main(void)
{
  emit_length_test("SHA1", EVP_sha1(), MAX_LENGTH);
  emit_length_test("SHA224", EVP_sha224(), MAX_LENGTH);
  emit_length_test("SHA256", EVP_sha256(), MAX_LENGTH);
  emit_length_test("SHA384", EVP_sha384(), MAX_LENGTH);
  emit_length_test("SHA512", EVP_sha512(), MAX_LENGTH);
  return 0;
}
