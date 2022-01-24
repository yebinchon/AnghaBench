#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {TYPE_1__* hashes; int /*<<< orphan*/  hkdf_label_prefix; } ;
typedef  TYPE_2__ ptls_key_schedule_t ;
typedef  int /*<<< orphan*/  ptls_iovec_t ;
struct TYPE_8__ {int /*<<< orphan*/  digest_size; } ;
struct TYPE_6__ {TYPE_3__* algo; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ptls_key_schedule_t *sched, uint8_t *secret, ptls_iovec_t nonce)
{
    int ret;

    if ((ret = FUNC0(sched, secret, "res master")) != 0)
        goto Exit;
    if ((ret = FUNC1(sched->hashes[0].algo, secret, sched->hashes[0].algo->digest_size,
                                 FUNC3(secret, sched->hashes[0].algo->digest_size), "resumption", nonce,
                                 sched->hkdf_label_prefix)) != 0)
        goto Exit;

Exit:
    if (ret != 0)
        FUNC2(secret, sched->hashes[0].algo->digest_size);
    return ret;
}