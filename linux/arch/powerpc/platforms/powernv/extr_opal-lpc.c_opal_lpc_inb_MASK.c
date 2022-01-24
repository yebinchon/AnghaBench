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
typedef  int u8 ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_LPC_IO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ opal_lpc_chip_id ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u8 FUNC2(unsigned long port)
{
	int64_t rc;
	__be32 data;

	if (opal_lpc_chip_id < 0 || port > 0xffff)
		return 0xff;
	rc = FUNC1(opal_lpc_chip_id, OPAL_LPC_IO, port, &data, 1);
	return rc ? 0xff : FUNC0(data);
}