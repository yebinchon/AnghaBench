#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  i; int /*<<< orphan*/  checksum; int /*<<< orphan*/  const* out; int /*<<< orphan*/  prpctx; TYPE_1__* prp; int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ ocb ;
typedef  int /*<<< orphan*/  cf_gf128 ;
struct TYPE_4__ {int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 int BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC7(void *vctx, const uint8_t *block)
{
  ocb *o = vctx;

  /* Offset_i = Offset_{i - 1} xor L{ntz(i)} */
  FUNC4(o, FUNC3(o->i), o->offset);

  /* C_i = Offset_i xor ENCIPHER(K, P_i xor Offset_i) */
  uint8_t offset_bytes[BLOCK];
  FUNC2(o->offset, offset_bytes);

  uint8_t block_tmp[BLOCK];
  FUNC6(block_tmp, block, offset_bytes, sizeof block_tmp);
  o->prp->encrypt(o->prpctx, block_tmp, block_tmp);
  FUNC6(o->out, block_tmp, offset_bytes, sizeof block_tmp);
  o->out += sizeof block_tmp;

  /* Checksum_i = Checksum_{i - 1} xor P_i */
  cf_gf128 P;
  FUNC1(block, P);
  FUNC0(o->checksum, P, o->checksum);

  o->i++;
}