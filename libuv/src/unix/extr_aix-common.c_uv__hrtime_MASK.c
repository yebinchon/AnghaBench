#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_clocktype_t ;
typedef  int uint64_t ;
struct TYPE_4__ {int tb_low; scalar_t__ tb_high; } ;
typedef  TYPE_1__ timebasestruct_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIMEBASE_SZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

uint64_t FUNC2(uv_clocktype_t type) {
  uint64_t G = 1000000000;
  timebasestruct_t t;
  FUNC0(&t, TIMEBASE_SZ);
  FUNC1(&t, TIMEBASE_SZ);
  return (uint64_t) t.tb_high * G + t.tb_low;
}