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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  cf_salsa20_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
  uint8_t key[32] = { 0 };
  uint8_t nonce[8] = { 0 };
  uint8_t msg[64] = { 0 };
  uint8_t cipher[64] = { 0 };

  cf_salsa20_ctx ctx;
  FUNC1(&ctx, key, sizeof key, nonce);
  FUNC0(&ctx, msg, cipher, sizeof msg);
}