#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  rounds; } ;
typedef  TYPE_1__ cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  AES128_ROUNDS ; 
 int /*<<< orphan*/  AES192_ROUNDS ; 
 int /*<<< orphan*/  AES256_ROUNDS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(cf_aes_context *ctx, const uint8_t *key, size_t nkey)
{
  FUNC2(ctx, 0, sizeof *ctx);

  switch (nkey)
  {
#if CF_AES_MAXROUNDS >= AES128_ROUNDS
    case 16:
      ctx->rounds = AES128_ROUNDS;
      FUNC1(ctx, key, nkey);
      break;
#endif

#if CF_AES_MAXROUNDS >= AES192_ROUNDS
    case 24:
      ctx->rounds = AES192_ROUNDS;
      FUNC1(ctx, key, nkey);
      break;
#endif

#if CF_AES_MAXROUNDS >= AES256_ROUNDS
    case 32:
      ctx->rounds = AES256_ROUNDS;
      FUNC1(ctx, key, nkey);
      break;
#endif

    default:
      FUNC0();
  }
}