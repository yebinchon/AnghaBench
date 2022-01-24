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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  partial ;
typedef  int /*<<< orphan*/  norx32_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_PAYLOAD ; 
 size_t RATE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(norx32_ctx *ctx,
                         const uint8_t *plain, uint8_t *cipher, size_t nbytes)
{
  if (nbytes == 0)
    return;

  /* Process full blocks: easy */
  while (nbytes >= RATE_BYTES)
  {
    FUNC3(ctx, DOMAIN_PAYLOAD);
    FUNC0(ctx, plain, cipher);
    plain += RATE_BYTES;
    cipher += RATE_BYTES;
    nbytes -= RATE_BYTES;
  }

  /* Final padded block. */
  uint8_t partial[RATE_BYTES];
  FUNC2(partial, 0, sizeof partial);
  FUNC1(partial, plain, nbytes);
  partial[nbytes] ^= 0x01;
  partial[sizeof(partial) - 1] ^= 0x80;

  FUNC3(ctx, DOMAIN_PAYLOAD);
  FUNC0(ctx, partial, partial);

  FUNC1(cipher, partial, nbytes);
}