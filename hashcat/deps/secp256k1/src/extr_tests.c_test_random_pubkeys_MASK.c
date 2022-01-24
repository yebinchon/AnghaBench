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
typedef  int /*<<< orphan*/  secp256k1_ge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 size_t FUNC6 (int) ; 

void FUNC7(void) {
    secp256k1_ge elem;
    secp256k1_ge elem2;
    unsigned char in[65];
    /* Generate some randomly sized pubkeys. */
    size_t len = FUNC6(2) == 0 ? 65 : 33;
    if (FUNC6(2) == 0) {
        len = FUNC6(6);
    }
    if (len == 65) {
      in[0] = FUNC6(1) ? 4 : (FUNC6(1) ? 6 : 7);
    } else {
      in[0] = FUNC6(1) ? 2 : 3;
    }
    if (FUNC6(3) == 0) {
        in[0] = FUNC6(8);
    }
    if (len > 1) {
        FUNC5(&in[1]);
    }
    if (len > 33) {
        FUNC5(&in[33]);
    }
    if (FUNC3(&elem, in, len)) {
        unsigned char out[65];
        unsigned char firstb;
        int res;
        size_t size = len;
        firstb = in[0];
        /* If the pubkey can be parsed, it should round-trip... */
        FUNC0(FUNC4(&elem, out, &size, len == 33));
        FUNC0(size == len);
        FUNC0(FUNC2(&in[1], &out[1], len-1) == 0);
        /* ... except for the type of hybrid inputs. */
        if ((in[0] != 6) && (in[0] != 7)) {
            FUNC0(in[0] == out[0]);
        }
        size = 65;
        FUNC0(FUNC4(&elem, in, &size, 0));
        FUNC0(size == 65);
        FUNC0(FUNC3(&elem2, in, size));
        FUNC1(&elem,&elem2);
        /* Check that the X9.62 hybrid type is checked. */
        in[0] = FUNC6(1) ? 6 : 7;
        res = FUNC3(&elem2, in, size);
        if (firstb == 2 || firstb == 3) {
            if (in[0] == firstb + 4) {
              FUNC0(res);
            } else {
              FUNC0(!res);
            }
        }
        if (res) {
            FUNC1(&elem,&elem2);
            FUNC0(FUNC4(&elem, out, &size, 0));
            FUNC0(FUNC2(&in[1], &out[1], 64) == 0);
        }
    }
}