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
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int FUNC0 (char*,int,unsigned char const*,unsigned char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(int flen, const unsigned char *from, unsigned char *to, RSA *rsa, int padding)
{
    return FUNC0("priv_enc", flen, from, to, rsa, padding);
}