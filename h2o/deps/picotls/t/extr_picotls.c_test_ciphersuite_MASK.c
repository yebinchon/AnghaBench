#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  aead; } ;
typedef  TYPE_1__ ptls_cipher_suite_t ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,char*,char*,size_t,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(ptls_cipher_suite_t *cs1, ptls_cipher_suite_t *cs2)
{
    const char *traffic_secret = "012345678901234567890123456789012345678901234567", *src1 = "hello world", *src2 = "good bye, all";
    ptls_aead_context_t *c;
    char enc1[256], enc2[256], dec1[256], dec2[256];
    size_t enc1len, enc2len, dec1len, dec2len;

    /* encrypt */
    c = FUNC8(cs1->aead, cs1->hash, 1, traffic_secret, NULL);
    FUNC0(c != NULL);
    FUNC5(c, 0, NULL, 0);
    enc1len = FUNC6(c, enc1, src1, FUNC9(src1));
    enc1len += FUNC4(c, enc1 + enc1len);
    FUNC5(c, 1, NULL, 0);
    enc2len = FUNC6(c, enc2, src2, FUNC9(src2));
    enc2len += FUNC4(c, enc2 + enc2len);
    FUNC7(c);

    c = FUNC8(cs2->aead, cs2->hash, 0, traffic_secret, NULL);
    FUNC0(c != NULL);

    /* decrypt and compare */
    dec1len = FUNC3(c, dec1, enc1, enc1len, 0, NULL, 0);
    FUNC2(dec1len != SIZE_MAX);
    dec2len = FUNC3(c, dec2, enc2, enc2len, 1, NULL, 0);
    FUNC2(dec2len != SIZE_MAX);
    FUNC2(FUNC9(src1) == dec1len);
    FUNC2(FUNC1(src1, dec1, dec1len) == 0);
    FUNC2(FUNC9(src2) == dec2len);
    FUNC2(FUNC1(src2, dec2, dec2len - 1) == 0);

    /* alter and decrypt to detect failure */
    enc1[0] ^= 1;
    dec1len = FUNC3(c, dec1, enc1, enc1len, 0, NULL, 0);
    FUNC2(dec1len == SIZE_MAX);

    FUNC7(c);
}