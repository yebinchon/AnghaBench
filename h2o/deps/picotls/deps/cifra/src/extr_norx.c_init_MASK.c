#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int* s; } ;
typedef  TYPE_1__ norx32_ctx ;

/* Variables and functions */
 int DEGREE ; 
 int ROUNDS ; 
 int TAG_BITS ; 
 int WORD_BITS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(norx32_ctx *ctx,
                 const uint8_t key[16],
                 const uint8_t nonce[8])
{
  /* 1. Basic setup */
  ctx->s[0] = FUNC1(nonce + 0);
  ctx->s[1] = FUNC1(nonce + 4);
  ctx->s[2] = 0xb707322f;
  ctx->s[3] = 0xa0c7c90d;

  ctx->s[4] = FUNC1(key + 0);
  ctx->s[5] = FUNC1(key + 4);
  ctx->s[6] = FUNC1(key + 8);
  ctx->s[7] = FUNC1(key + 12);

  ctx->s[8] = 0xa3d8d930;
  ctx->s[9] = 0x3fa8b72c;
  ctx->s[10] = 0xed84eb49;
  ctx->s[11] = 0xedca4787;

  ctx->s[12] = 0x335463eb;
  ctx->s[13] = 0xf994220b;
  ctx->s[14] = 0xbe0bf5c9;
  ctx->s[15] = 0xd7c49104;

  /* 2. Parameter integration
   * w = 32
   * l = 4
   * p = 1
   * t = 128
   */
  ctx->s[12] ^= WORD_BITS;
  ctx->s[13] ^= ROUNDS;
  ctx->s[14] ^= DEGREE;
  ctx->s[15] ^= TAG_BITS;

  FUNC0(ctx);
}