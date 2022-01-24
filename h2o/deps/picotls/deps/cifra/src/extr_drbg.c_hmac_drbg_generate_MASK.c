#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {TYPE_1__* hash; } ;
struct TYPE_10__ {int /*<<< orphan*/  reseed_counter; int /*<<< orphan*/  V; TYPE_3__ hmac; } ;
typedef  TYPE_2__ cf_hmac_drbg ;
typedef  TYPE_3__ cf_hmac_ctx ;
struct TYPE_9__ {int /*<<< orphan*/  hashsz; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC7(cf_hmac_drbg *ctx,
                               const void *addnl, size_t naddnl,
                               void *out, size_t nout)
{
  /* 1. If reseed_counter > reseed_interval, then return an indication
   * that a reseed is required */
  FUNC1(!FUNC2(ctx));

  /* 2. If additional_input != null, then
   *    (Key, V) = HMAC_DRBG_Update(additional_input, Key, V)
   */
  if (naddnl)
    FUNC5(ctx, addnl, naddnl, NULL, 0, NULL, 0);

  /* 3. temp = Null
   * 4. While (len(temp) < requested_number_of_bits) do:
   *   4.1. V = HMAC(Key, V)
   *   4.2. temp = temp || V
   * 5. returned_bits = leftmost(temp, requested_number_of_bits)
   *
   * We write the contents of temp directly into the caller's
   * out buffer.
   */
  uint8_t *bout = out;
  cf_hmac_ctx local;

  while (nout)
  {
    local = ctx->hmac;
    FUNC4(&local, ctx->V, ctx->hmac.hash->hashsz);
    FUNC3(&local, ctx->V);

    size_t take = FUNC0(ctx->hmac.hash->hashsz, nout);
    FUNC6(bout, ctx->V, take);
    bout += take;
    nout -= take;
  }

  /* 6. (Key, V) = HMAC_DRBG_Update(additional_input, Key, V) */
  FUNC5(ctx, addnl, naddnl, NULL, 0, NULL, 0);

  /* 7. reseed_counter = reseed_counter + 1 */
  ctx->reseed_counter++;
}