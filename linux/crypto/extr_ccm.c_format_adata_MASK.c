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
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(u8 *adata, unsigned int a)
{
	int len = 0;

	/* add control info for associated data
	 * RFC 3610 and NIST Special Publication 800-38C
	 */
	if (a < 65280) {
		*(__be16 *)adata = FUNC0(a);
		len = 2;
	} else  {
		*(__be16 *)adata = FUNC0(0xfffe);
		*(__be32 *)&adata[2] = FUNC1(a);
		len = 6;
	}

	return len;
}