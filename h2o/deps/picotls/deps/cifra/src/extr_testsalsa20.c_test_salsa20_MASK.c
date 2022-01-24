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
struct TYPE_4__ {int /*<<< orphan*/ * nonce; } ;
typedef  TYPE_1__ cf_salsa20_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  cf_salsa20_ctx ctx;
  uint8_t key[32], nonce[8], cipher[64], expect[64];

  FUNC5(key, 32, "0102030405060708090a0b0c0d0e0f10c9cacbcccdcecfd0d1d2d3d4d5d6d7d8");
  FUNC4(nonce, 0, 8);

  FUNC2(&ctx, key, sizeof key, nonce);
  FUNC5(ctx.nonce, 16, "65666768696a6b6c6d6e6f7071727374");
  FUNC4(cipher, 0, 64);
  FUNC1(&ctx, cipher, cipher, 64);

  FUNC5(expect, 64, "45254427290f6bc1ff8b7a06aae9d9625990b66a1533c841ef31de22d772287e68c507e1c5991f02664e4cb054f5f6b8b1a0858206489577c0c384ecea67f64a");
  FUNC0(FUNC3(expect, cipher, 64) == 0);

  FUNC2(&ctx, key, 16, nonce);
  FUNC5(ctx.nonce, 16, "65666768696a6b6c6d6e6f7071727374");
  FUNC4(cipher, 0, 64);
  FUNC1(&ctx, cipher, cipher, 64);

  FUNC5(expect, 64, "27ad2ef81ec852113043feef25120df7f1c83d900a3732b9062ff6fd8f56bbe186556ef6a1a32bebe75eab3391d6701d0ee80510978cb78dab097ab568b6b1c1");
  FUNC0(FUNC3(expect, cipher, 64) == 0);
}