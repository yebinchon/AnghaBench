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
typedef  scalar_t__ int64_t ;
typedef  int __le32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_LPC_IO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ opal_lpc_chip_id ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __le32 FUNC3(unsigned long port)
{
	int64_t rc;
	__be32 data;

	if (opal_lpc_chip_id < 0 || port > 0xfffc)
		return 0xffffffff;
	if (port & 3)
		return (__le32)FUNC1(port    ) << 24 |
		       (__le32)FUNC1(port + 1) << 16 |
		       (__le32)FUNC1(port + 2) <<  8 |
			       FUNC1(port + 3);
	rc = FUNC2(opal_lpc_chip_id, OPAL_LPC_IO, port, &data, 4);
	return rc ? 0xffffffff : FUNC0(data);
}