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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC2(const unsigned char *key, u64 *subkey)
{
	unsigned char kk[32];
	u64 krl, krr;

	FUNC1(kk, key, 24);
	FUNC1((unsigned char *)&krl, key+16, 8);
	krr = ~krl;
	FUNC1(kk+24, (unsigned char *)&krr, 8);
	FUNC0(kk, subkey);
}