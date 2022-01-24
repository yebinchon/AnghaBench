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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  ptls_cipher_context_t ;
typedef  int /*<<< orphan*/  ptls_cipher_algorithm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int const*) ; 

__attribute__((used)) static void FUNC9(ptls_cipher_algorithm_t *algo, const void *expected, size_t expected_len)
{
    static const uint8_t key[] = {0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10, 11, 12, 13, 14, 15,
                                  16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31},
                         plaintext[] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77,
                                        0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff};

    uint8_t *actual = FUNC2(expected_len);
    FUNC0(actual != NULL);
    /* encrypt */
    FUNC4(actual, 0, expected_len);
    ptls_cipher_context_t *ctx = FUNC8(algo, 1, key);
    FUNC6(ctx, actual, plaintext, expected_len);
    FUNC7(ctx);
    FUNC5(FUNC3(actual, expected, expected_len) == 0);

    /* decrypt */
    ctx = FUNC8(algo, 0, key);
    FUNC6(ctx, actual, actual, expected_len);
    FUNC7(ctx);
    FUNC5(FUNC3(actual, plaintext, expected_len) == 0);

    FUNC1(actual);
}