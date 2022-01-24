#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  i; int /*<<< orphan*/  offset; int /*<<< orphan*/  sum; int /*<<< orphan*/  o; } ;
typedef  TYPE_1__ ocb_hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *vctx, const uint8_t *block)
{
  ocb_hash *h = vctx;

  /* Offset_i = Offset_{i - 1} xor L{ntz(i)} */
  FUNC1(h->o, FUNC0(h->i), h->offset);

  /* Sum_i = Sum_{i - 1} xor ENCIPHER(K, A_i xor Offset_i) */
  FUNC2(h->o, block, h->sum, h->offset);

  h->i++;
}