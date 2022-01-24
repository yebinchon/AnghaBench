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
typedef  int /*<<< orphan*/  norx32_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(const uint8_t key[16],
                       const uint8_t nonce[8],
                       const uint8_t *header, size_t nheader,
                       const uint8_t *plaintext, size_t nbytes,
                       const uint8_t *trailer, size_t ntrailer,
                       uint8_t *ciphertext,
                       uint8_t tag[16])
{
  norx32_ctx ctx;

  FUNC4(&ctx, key, nonce);
  FUNC0(&ctx, header, nheader);
  FUNC2(&ctx, plaintext, ciphertext, nbytes);
  FUNC1(&ctx, trailer, ntrailer);
  FUNC3(&ctx, tag);

  FUNC5(&ctx, sizeof ctx);
}