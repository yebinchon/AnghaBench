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
typedef  scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ short_cnt; scalar_t__ long_cnt; int /*<<< orphan*/ * short_buf; int /*<<< orphan*/ * long_buf; } ;
typedef  TYPE_1__ brain_server_db_attack_t ;
typedef  int /*<<< orphan*/  brain_server_attack_short_t ;
typedef  int /*<<< orphan*/  brain_server_attack_long_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,scalar_t__ const,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,scalar_t__ const,scalar_t__) ; 

u64 FUNC3 (const brain_server_db_attack_t *buf)
{
  const brain_server_attack_long_t  *long_buf  = buf->long_buf;
  const brain_server_attack_short_t *short_buf = buf->short_buf;

  const u64 long_cnt  = buf->long_cnt;
  const u64 short_cnt = buf->short_cnt;

  u64 highest_long  = FUNC1  (long_buf,  long_cnt,  0);
  u64 highest_short = FUNC2 (short_buf, short_cnt, 0);

  u64 highest = FUNC0 (highest_long, highest_short);

  highest_long  = FUNC1  (long_buf,  long_cnt,  highest);
  highest_short = FUNC2 (short_buf, short_cnt, highest);

  highest = FUNC0 (highest_long, highest_short);

  return highest;
}