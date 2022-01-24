#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_2__* hashes; } ;
typedef  TYPE_3__ ptls_key_schedule_t ;
struct TYPE_9__ {TYPE_1__* algo; } ;
struct TYPE_8__ {int /*<<< orphan*/  digest_size; } ;

/* Variables and functions */
 int PTLS_MAX_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ptls_key_schedule_t *sched)
{
    uint8_t ch1hash[PTLS_MAX_DIGEST_SIZE];

    FUNC0(sched, ch1hash);

    FUNC1(sched);
    FUNC2(sched, ch1hash, sched->hashes[0].algo->digest_size);
}