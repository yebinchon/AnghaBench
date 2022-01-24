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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_aes128ctr ; 
 int /*<<< orphan*/  test_aes128ecb ; 
 int /*<<< orphan*/  test_aes128gcm ; 
 int /*<<< orphan*/  test_aes256ecb ; 
 int /*<<< orphan*/  test_aes256gcm ; 
 int /*<<< orphan*/  test_all_handshakes ; 
 int /*<<< orphan*/  test_base64_decode ; 
 int /*<<< orphan*/  test_chacha20 ; 
 int /*<<< orphan*/  test_chacha20poly1305 ; 
 int /*<<< orphan*/  test_ffx ; 
 int /*<<< orphan*/  test_fragmented_message ; 
 int /*<<< orphan*/  test_hkdf ; 
 int /*<<< orphan*/  test_hmac_sha256 ; 
 int /*<<< orphan*/  test_is_ipaddr ; 
 int /*<<< orphan*/  test_sha256 ; 
 int /*<<< orphan*/  test_sha384 ; 

void FUNC1(void)
{
    FUNC0("is_ipaddr", test_is_ipaddr);
    FUNC0("sha256", test_sha256);
    FUNC0("sha384", test_sha384);
    FUNC0("hmac-sha256", test_hmac_sha256);
    FUNC0("hkdf", test_hkdf);
    FUNC0("aes128gcm", test_aes128gcm);
    FUNC0("aes256gcm", test_aes256gcm);
    FUNC0("chacha20poly1305", test_chacha20poly1305);
    FUNC0("aes128ecb", test_aes128ecb);
    FUNC0("aes256ecb", test_aes256ecb);
    FUNC0("aes128ctr", test_aes128ctr);
    FUNC0("chacha20", test_chacha20);
    FUNC0("ffx", test_ffx);
    FUNC0("base64-decode", test_base64_decode);
    FUNC0("fragmented-message", test_fragmented_message);
    FUNC0("handshake", test_all_handshakes);
}