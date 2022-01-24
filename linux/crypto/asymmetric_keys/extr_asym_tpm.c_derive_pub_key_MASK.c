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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  SETKEY_PARAMS_SIZE ; 
 int FUNC0 (int) ; 
 int* FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC4(const void *pub_key, uint32_t len, uint8_t *buf)
{
	uint8_t *cur = buf;
	uint32_t n_len = FUNC0(len) + 1 + len + 1;
	uint32_t e_len = FUNC0(3) + 1 + 3;
	uint8_t e[3] = { 0x01, 0x00, 0x01 };

	/* SEQUENCE */
	cur = FUNC1(cur, 0x30, n_len + e_len);
	/* INTEGER n */
	cur = FUNC1(cur, 0x02, len + 1);
	cur[0] = 0x00;
	FUNC2(cur + 1, pub_key, len);
	cur += len + 1;
	cur = FUNC1(cur, 0x02, sizeof(e));
	FUNC2(cur, e, sizeof(e));
	cur += sizeof(e);
	/* Zero parameters to satisfy set_pub_key ABI. */
	FUNC3(cur, 0, SETKEY_PARAMS_SIZE);

	return cur - buf;
}