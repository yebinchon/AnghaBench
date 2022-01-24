#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int* p; } ;

/* Variables and functions */
 TYPE_1__ curve_secp256r1 ; 
 int num_words_secp256r1 ; 
 scalar_t__ FUNC0 (int*,int*,int*,int) ; 
 int FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 scalar_t__ FUNC3 (int*,int*,int*,int) ; 

__attribute__((used)) static void FUNC4(uint64_t *result, uint64_t *product) {
    uint64_t tmp[num_words_secp256r1];
    int carry;
    
    /* t */
    FUNC2(result, product, num_words_secp256r1);
    
    /* s1 */
    tmp[0] = 0;
    tmp[1] = product[5] & 0xffffffff00000000ull;
    tmp[2] = product[6];
    tmp[3] = product[7];
    carry = (int)FUNC0(tmp, tmp, tmp, num_words_secp256r1);
    carry += FUNC0(result, result, tmp, num_words_secp256r1);
    
    /* s2 */
    tmp[1] = product[6] << 32;
    tmp[2] = (product[6] >> 32) | (product[7] << 32);
    tmp[3] = product[7] >> 32;
    carry += FUNC0(tmp, tmp, tmp, num_words_secp256r1);
    carry += FUNC0(result, result, tmp, num_words_secp256r1);
    
    /* s3 */
    tmp[0] = product[4];
    tmp[1] = product[5] & 0xffffffff;
    tmp[2] = 0;
    tmp[3] = product[7];
    carry += FUNC0(result, result, tmp, num_words_secp256r1);
    
    /* s4 */
    tmp[0] = (product[4] >> 32) | (product[5] << 32);
    tmp[1] = (product[5] >> 32) | (product[6] & 0xffffffff00000000ull);
    tmp[2] = product[7];
    tmp[3] = (product[6] >> 32) | (product[4] << 32);
    carry += FUNC0(result, result, tmp, num_words_secp256r1);
    
    /* d1 */
    tmp[0] = (product[5] >> 32) | (product[6] << 32);
    tmp[1] = (product[6] >> 32);
    tmp[2] = 0;
    tmp[3] = (product[4] & 0xffffffff) | (product[5] << 32);
    carry -= FUNC3(result, result, tmp, num_words_secp256r1);
    
    /* d2 */
    tmp[0] = product[6];
    tmp[1] = product[7];
    tmp[2] = 0;
    tmp[3] = (product[4] >> 32) | (product[5] & 0xffffffff00000000ull);
    carry -= FUNC3(result, result, tmp, num_words_secp256r1);
    
    /* d3 */
    tmp[0] = (product[6] >> 32) | (product[7] << 32);
    tmp[1] = (product[7] >> 32) | (product[4] << 32);
    tmp[2] = (product[4] >> 32) | (product[5] << 32);
    tmp[3] = (product[6] << 32);
    carry -= FUNC3(result, result, tmp, num_words_secp256r1);
    
    /* d4 */
    tmp[0] = product[7];
    tmp[1] = product[4] & 0xffffffff00000000ull;
    tmp[2] = product[5];
    tmp[3] = product[6] & 0xffffffff00000000ull;
    carry -= FUNC3(result, result, tmp, num_words_secp256r1);
    
    if (carry < 0) {
        do {
            carry += FUNC0(result, result, curve_secp256r1.p, num_words_secp256r1);
        } while (carry < 0);
    } else {
        while (carry || FUNC1(curve_secp256r1.p, result, num_words_secp256r1) != 1) {
            carry -= FUNC3(result, result, curve_secp256r1.p, num_words_secp256r1);
        }
    }
}