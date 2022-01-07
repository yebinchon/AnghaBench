
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_aes128ctr ;
 int test_aes128ecb ;
 int test_aes128gcm ;
 int test_aes256ecb ;
 int test_aes256gcm ;
 int test_all_handshakes ;
 int test_base64_decode ;
 int test_chacha20 ;
 int test_chacha20poly1305 ;
 int test_ffx ;
 int test_fragmented_message ;
 int test_hkdf ;
 int test_hmac_sha256 ;
 int test_is_ipaddr ;
 int test_sha256 ;
 int test_sha384 ;

void test_picotls(void)
{
    subtest("is_ipaddr", test_is_ipaddr);
    subtest("sha256", test_sha256);
    subtest("sha384", test_sha384);
    subtest("hmac-sha256", test_hmac_sha256);
    subtest("hkdf", test_hkdf);
    subtest("aes128gcm", test_aes128gcm);
    subtest("aes256gcm", test_aes256gcm);
    subtest("chacha20poly1305", test_chacha20poly1305);
    subtest("aes128ecb", test_aes128ecb);
    subtest("aes256ecb", test_aes256ecb);
    subtest("aes128ctr", test_aes128ctr);
    subtest("chacha20", test_chacha20);
    subtest("ffx", test_ffx);
    subtest("base64-decode", test_base64_decode);
    subtest("fragmented-message", test_fragmented_message);
    subtest("handshake", test_all_handshakes);
}
