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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct shash_desc {int dummy; } ;

/* Variables and functions */
 unsigned int CRC_T10DIF_PMULL_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc, const u8 *data,
			    unsigned int length)
{
	u16 *crc = FUNC5(desc);

	if (length >= CRC_T10DIF_PMULL_CHUNK_SIZE && FUNC2()) {
		FUNC3();
		*crc = FUNC1(*crc, data, length);
		FUNC4();
	} else {
		*crc = FUNC0(*crc, data, length);
	}

	return 0;
}