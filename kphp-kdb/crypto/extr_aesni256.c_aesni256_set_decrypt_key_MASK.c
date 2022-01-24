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
struct aesni256_ctx {int /*<<< orphan*/ * a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aesni256_ctx*,unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (struct aesni256_ctx *ctx, unsigned char key[32]) {
  int i;
  FUNC0 (ctx, key);
  unsigned char *a = FUNC1 (&ctx->a[0]);
  for (i = 1; i <= 13; i++) {
    asm volatile (
      "aesimc (%0), %%xmm1\n\t"
      "movdqa %%xmm1, (%0)\n\t"
    :
    : "r" (&a[i * 16])
    : "%xmm1", "memory"
    );
  }
}