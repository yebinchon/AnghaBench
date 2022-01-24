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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(const cf_sha3_bi *bi, uint8_t data[8])
{
  uint32_t lo = (bi->odd & 0x0000ffff) | (bi->evn << 16),
           hi = (bi->odd >> 16) | (bi->evn & 0xffff0000);

  lo = FUNC0(lo);
  hi = FUNC0(hi);

  FUNC1(lo, data + 0);
  FUNC1(hi, data + 4);
}