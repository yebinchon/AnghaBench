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
typedef  int u8 ;
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
struct TYPE_5__ {int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;
typedef  TYPE_1__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_context ;

/* Variables and functions */
 int /*<<< orphan*/  SECP256K1_CONTEXT_NONE ; 
 int /*<<< orphan*/  SECP256K1_CONTEXT_VERIFY ; 
 int /*<<< orphan*/  SECP256K1_EC_COMPRESSED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int*) ; 

bool FUNC13 (secp256k1_pubkey *pubkey, u8 *buf, size_t length)
{
  #if !defined (WITH_LIBSECP256K1)

  secp256k1_context *sctx = FUNC0 (SECP256K1_CONTEXT_NONE);

  secp256k1_gej res;
  secp256k1_ge  pt;

  // load the public key and 32 byte scalar:

  FUNC9 (sctx, &pt, pubkey);

  int overflow = 0;

  secp256k1_scalar s;

  FUNC12 (&s, buf, &overflow);

  if (overflow != 0)
  {
    FUNC10 (&s);

    FUNC1 (sctx);

    return false;
  }

  if (FUNC11 (&s))
  {
    FUNC10 (&s);

    FUNC1 (sctx);

    return false;
  }


  // main multiply operation:

  const size_t scalar_size = (length - 1) * 8;

  FUNC4 (&res, &pt, &s, scalar_size);
  FUNC8   (&pt, &res);
  FUNC7 (&pt.x);
  FUNC7 (&pt.y);


  // output:

  buf[0] = 0x02 | FUNC6 (&pt.y);

  FUNC5 (buf + 1, &pt.x);


  // cleanup:

  FUNC10 (&s);

  FUNC1 (sctx);

  #else

  // ATTENTION: this way to multiply was much slower in our tests

  secp256k1_context *sctx = secp256k1_context_create (SECP256K1_CONTEXT_VERIFY);


  // main multiply operation:

  if (secp256k1_ec_pubkey_tweak_mul (sctx, pubkey, buf) == 0)
  {
    secp256k1_context_destroy (sctx);

    return false;
  }


  // output:

  secp256k1_ec_pubkey_serialize (sctx, buf, &length, pubkey, SECP256K1_EC_COMPRESSED);


  // cleanup:

  secp256k1_context_destroy (sctx);

  #endif

  return true;
}