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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  SECP256K1_CONTEXT_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

bool FUNC3 (secp256k1_pubkey *pubkey, u8 *buf, size_t length)
{
  secp256k1_context *t_ctx = FUNC0 (SECP256K1_CONTEXT_NONE);

  if (FUNC2 (t_ctx, pubkey, buf, length) == 0)
  {
    FUNC1 (t_ctx);

    return false;
  }

  FUNC1 (t_ctx);

  return true;
}