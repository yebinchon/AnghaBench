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
typedef  int /*<<< orphan*/  uint32_t ;
struct data_buf {int /*<<< orphan*/  cur_len; scalar_t__ cur; scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crc_table ; 

__attribute__((used)) static uint32_t
FUNC1(struct data_buf *dbuf, uint32_t crc32)
{
	if (dbuf->prev)
		crc32 = FUNC0(crc32, dbuf->prev, BUFLEN, crc_table);

	return FUNC0(crc32, dbuf->cur, dbuf->cur_len, crc_table);
}