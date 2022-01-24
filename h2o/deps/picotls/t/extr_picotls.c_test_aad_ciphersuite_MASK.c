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
 size_t FUNC3 (int /*<<< orphan*/ *,char*,char*,size_t,int,char const*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char const*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(ptls_cipher_suite_t *cs1, ptls_cipher_suite_t *cs2)
{
    const char *traffic_secret = "012345678901234567890123456789012345678901234567", *src = "hello world", *aad = "my true aad";
    ptls_aead_context_t *c;
    char enc[256], dec[256];
    size_t enclen, declen;

    /* encrypt */
    c = FUNC8(cs1->aead, cs1->hash, 1, traffic_secret, NULL);
    FUNC0(c != NULL);
    FUNC5(c, 123, aad, FUNC9(aad));
    enclen = FUNC6(c, enc, src, FUNC9(src));
    enclen += FUNC4(c, enc + enclen);
    FUNC7(c);

    /* decrypt */
    c = FUNC8(cs2->aead, cs2->hash, 0, traffic_secret, NULL);
    FUNC0(c != NULL);
    declen = FUNC3(c, dec, enc, enclen, 123, aad, FUNC9(aad));
    FUNC2(declen == FUNC9(src));
    FUNC2(FUNC1(src, dec, declen) == 0);
    declen = FUNC3(c, dec, enc, enclen, 123, "my fake aad", FUNC9(aad));
    FUNC2(declen == SIZE_MAX);
    FUNC7(c);
}