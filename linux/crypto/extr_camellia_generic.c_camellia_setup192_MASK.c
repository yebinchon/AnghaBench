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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC2(const unsigned char *key, u32 *subkey)
{
	unsigned char kk[32];
	u32 krll, krlr, krrl, krrr;

	FUNC1(kk, key, 24);
	FUNC1((unsigned char *)&krll, key+16, 4);
	FUNC1((unsigned char *)&krlr, key+20, 4);
	krrl = ~krll;
	krrr = ~krlr;
	FUNC1(kk+24, (unsigned char *)&krrl, 4);
	FUNC1(kk+28, (unsigned char *)&krrr, 4);
	FUNC0(kk, subkey);
}