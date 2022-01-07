
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t nb_test_keys ;
 int openPemTest (int ) ;
 int printf (char*) ;
 int ptls_memory_loopback_test (int,int,char*,char*) ;
 int * test_keys ;

int main()
{
 int ret = 0;




 for (size_t i = 0; ret == 0 && i < nb_test_keys; i++)
 {
  ret = openPemTest(test_keys[i]);
 }


 if (ret == 0)
 {
  printf("\nStarting the RSA test with OpenSSL\n");
  ret = ptls_memory_loopback_test(1, 1, "key.pem", "cert.pem");
 }

 if (ret == 0)
 {
  printf("\nStarting the P256R1 test with OpenSSL\n");
  ret = ptls_memory_loopback_test(1, 1, "ec_key.pem", "ec_cert.pem");
 }

 if (ret == 0)
 {
  printf("\nStarting the P256R1 test with OpenSSL server and Minicrypto client\n");
  ret = ptls_memory_loopback_test(0, 1, "ec_key.pem", "ec_cert.pem");
 }

 if (ret == 0)
 {
  printf("\nStarting the P256R1 test with Minicrypto\n");
  ret = ptls_memory_loopback_test(0, 0, "ec_key.pem", "ec_cert.pem");
 }

 if (ret == 0)
 {
  printf("\nStarting the P256R1 test with Minicrypto server and OpenSSL client\n");
  ret = ptls_memory_loopback_test(1, 0, "ec_key.pem", "ec_cert.pem");
 }

    return ret;
}
