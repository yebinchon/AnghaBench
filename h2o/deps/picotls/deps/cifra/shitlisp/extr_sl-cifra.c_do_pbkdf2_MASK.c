#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct TYPE_12__ {TYPE_2__ bytes; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
typedef  TYPE_3__ sl_value ;
struct TYPE_15__ {scalar_t__ start; } ;
typedef  TYPE_4__ dstr ;
typedef  int /*<<< orphan*/  cf_chash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sl_value * FUNC5(const cf_chash *h, sl_value *pw, sl_value *salt,
                            uint32_t iterations, uint32_t outlen)
{
  dstr out;
  FUNC3(&out);
  if (FUNC1(&out, outlen))
    return NULL;

  FUNC0(pw->u.bytes.buf, pw->u.bytes.len,
                 salt->u.bytes.buf, salt->u.bytes.len,
                 iterations,
                 (uint8_t *) out.start, outlen,
                 h);

  sl_value *ret = FUNC4((uint8_t *) out.start, outlen);
  FUNC2(&out);
  return ret;
}