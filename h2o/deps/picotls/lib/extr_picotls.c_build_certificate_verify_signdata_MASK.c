#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {TYPE_2__* hashes; } ;
typedef  TYPE_3__ ptls_key_schedule_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* final ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_1__* algo; TYPE_4__* ctx; } ;
struct TYPE_6__ {scalar_t__ digest_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_HASH_FINAL_MODE_SNAPSHOT ; 
 size_t PTLS_MAX_CERTIFICATE_VERIFY_SIGNDATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC5(uint8_t *data, ptls_key_schedule_t *sched, const char *context_string)
{
    size_t datalen = 0;

    FUNC2(data + datalen, 32, 64);
    datalen += 64;
    FUNC1(data + datalen, context_string, FUNC3(context_string) + 1);
    datalen += FUNC3(context_string) + 1;
    sched->hashes[0].ctx->final(sched->hashes[0].ctx, data + datalen, PTLS_HASH_FINAL_MODE_SNAPSHOT);
    datalen += sched->hashes[0].algo->digest_size;
    FUNC0(datalen <= PTLS_MAX_CERTIFICATE_VERIFY_SIGNDATA_SIZE);

    return datalen;
}