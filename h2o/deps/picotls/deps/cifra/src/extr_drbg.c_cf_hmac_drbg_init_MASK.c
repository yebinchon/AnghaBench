#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int reseed_counter; int /*<<< orphan*/  hmac; int /*<<< orphan*/ * V; } ;
typedef  TYPE_1__ cf_hmac_drbg ;
struct TYPE_9__ {int hashsz; } ;
typedef  TYPE_2__ cf_chash ;

/* Variables and functions */
 int CF_MAXHASH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void const*,size_t,void const*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

void FUNC5(cf_hmac_drbg *ctx,
                       const cf_chash *hash,
                       const void *entropy, size_t nentropy,
                       const void *nonce, size_t nnonce,
                       const void *persn, size_t npersn)
{
  FUNC3(ctx, sizeof *ctx);

  FUNC0(hash->hashsz <= CF_MAXHASH);

  /* 2. Key = 0x00 00 ... 00
   * 3. V = 0x01 01 ... 01 */
  uint8_t initial_key[CF_MAXHASH];
  FUNC4(initial_key, 0x00, hash->hashsz);
  FUNC4(ctx->V, 0x01, hash->hashsz);
  FUNC1(&ctx->hmac, hash, initial_key, hash->hashsz);

  /* 1. seed_material = entropy_input || nonce || personalization_string
   * 4. (Key, V) = HMAC_DRBG_Update(seed_material, Key, V) */
  FUNC2(ctx, entropy, nentropy, nonce, nnonce, persn, npersn);

  /* 5. reseed_counter = 1 */
  ctx->reseed_counter = 1;
}