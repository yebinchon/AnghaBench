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
typedef  int /*<<< orphan*/  h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_cache_digests_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t) ; 
 scalar_t__ FUNC3 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,size_t,int,int) ; 

void FUNC7(h2o_cache_digests_t **digests, const char *value, size_t len)
{
    h2o_iovec_t iter = FUNC2(value, len);
    const char *token;
    size_t token_len;

    do {
        const char *gcs_base64;
        size_t gcs_base64_len;
        int reset = 0, validators = 0, complete = 0, skip = 0;
        h2o_iovec_t token_value;

        if ((gcs_base64 = FUNC5(&iter, ';', &gcs_base64_len, NULL)) == NULL)
            return;
        while ((token = FUNC5(&iter, ';', &token_len, &token_value)) != NULL &&
               !FUNC4(token, token_len, FUNC0(","))) {
            if (FUNC3(token, token_len, FUNC0("reset"))) {
                reset = 1;
            } else if (FUNC3(token, token_len, FUNC0("validators"))) {
                validators = 1;
            } else if (FUNC3(token, token_len, FUNC0("complete"))) {
                complete = 1;
            } else {
                skip = 1;
            }
        }

        if (reset && *digests != NULL) {
            FUNC1(*digests);
            *digests = NULL;
        }

        if (skip) {
            /* not supported for the time being */
        } else {
            FUNC6(digests, gcs_base64, gcs_base64_len, validators, complete);
        }
    } while (token != NULL);
}