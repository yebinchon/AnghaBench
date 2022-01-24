#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ ** traffic_secrets_t ;
typedef  int /*<<< orphan*/  ptls_update_traffic_key_t ;
typedef  int /*<<< orphan*/  ptls_t ;
struct TYPE_4__ {TYPE_1__* hash; } ;
struct TYPE_3__ {size_t digest_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_MAX_DIGEST_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ **** FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zeroes_of_max_digest_size ; 

__attribute__((used)) static int FUNC5(ptls_update_traffic_key_t *self, ptls_t *tls, int is_enc, size_t epoch, const void *secret)
{
    traffic_secrets_t *secrets = *FUNC4(tls);
    FUNC2(FUNC0((*secrets)[is_enc][epoch], zeroes_of_max_digest_size, PTLS_MAX_DIGEST_SIZE) == 0);

    size_t size = FUNC3(tls)->hash->digest_size;
    FUNC1((*secrets)[is_enc][epoch], secret, size);
    return 0;
}