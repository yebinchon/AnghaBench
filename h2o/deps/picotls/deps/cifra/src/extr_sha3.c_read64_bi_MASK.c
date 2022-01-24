#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int odd; int evn; } ;
typedef  TYPE_1__ cf_sha3_bi ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(cf_sha3_bi *out, const uint8_t data[8])
{
  uint32_t lo = FUNC0(data + 0),
           hi = FUNC0(data + 4);

  lo = FUNC1(lo);
  hi = FUNC1(hi);

  out->odd = (lo & 0x0000ffff) | (hi << 16);
  out->evn = (lo >> 16) | (hi & 0xffff0000);
}