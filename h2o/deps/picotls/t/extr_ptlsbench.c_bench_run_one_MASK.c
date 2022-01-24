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
typedef  int /*<<< orphan*/  v_enc ;
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;
typedef  int /*<<< orphan*/  h ;

/* Variables and functions */
 int BENCH_BATCH ; 
 int PTLS_ALERT_DECRYPT_ERROR ; 
 int PTLS_ERROR_NO_MEMORY ; 
 size_t PTLS_MAX_DIGEST_SIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,size_t,scalar_t__,scalar_t__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,size_t) ; 

__attribute__((used)) static int FUNC8(ptls_aead_context_t *e, ptls_aead_context_t *d, size_t n, size_t l, uint64_t *t_enc, uint64_t *t_dec,
                     uint64_t *s)
{
    int ret = 0;
    uint8_t *v_in = NULL;
    uint8_t *v_enc[BENCH_BATCH];
    uint8_t *v_dec = NULL;
    uint64_t h[4];

    *t_enc = 0;
    *t_dec = 0;
    *s = 0;

    FUNC3(v_enc, 0, sizeof(v_enc));
    FUNC3(h, 0, sizeof(h));
    v_in = (uint8_t *)FUNC2(l);
    v_dec = (uint8_t *)FUNC2(l);
    if (v_in == NULL || v_dec == NULL) {
        ret = PTLS_ERROR_NO_MEMORY;
    }

    for (size_t i = 0; ret == 0 && i < BENCH_BATCH; i++) {
        v_enc[i] = (uint8_t *)FUNC2(l + PTLS_MAX_DIGEST_SIZE);
        if (v_enc[i] == 0) {
            ret = PTLS_ERROR_NO_MEMORY;
        }
    }

    if (ret == 0) {
        FUNC3(v_in, 0, l);

        for (size_t k = 0; k < n;) {
            size_t e_len;
            size_t d_len;
            size_t i_max = ((n - k) > BENCH_BATCH) ? BENCH_BATCH : n - k;
            uint64_t old_h = h[0];
            uint64_t t_start = FUNC0();
            uint64_t t_medium;
            uint64_t t_end;

            for (size_t i = 0; i < i_max; i++) {
                h[0]++;

                FUNC6(e, h[0], h, sizeof(h));
                e_len = FUNC7(e, v_enc[i], v_in, l);
                e_len += FUNC5(e, v_enc[i] + e_len);

                *s += (v_enc[i])[l];
            }

            t_medium = FUNC0();

            h[0] = old_h;

            for (size_t i = 0; i < i_max; i++) {
                h[0]++;

                d_len = FUNC4(d, v_dec, v_enc[i], e_len, h[0], h, sizeof(h));
                if (d_len != l) {
                    ret = PTLS_ALERT_DECRYPT_ERROR;
                    break;
                }
                *s += v_dec[0];
            }

            t_end = FUNC0();

            *t_enc += t_medium - t_start;
            *t_dec += t_end - t_medium;

            k += i_max;
        }
    }

    if (v_in != NULL) {
        FUNC1(v_in);
    }

    for (size_t i = 0; i < BENCH_BATCH; i++) {
        if (v_enc[i] != NULL) {
            FUNC1(v_enc[i]);
        }
    }

    if (v_dec != NULL) {
        FUNC1(v_dec);
    }

    return ret;
}