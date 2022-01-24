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
struct crypto_akcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  crypto_akcipher_type ; 
 struct crypto_akcipher* FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct crypto_akcipher *FUNC1(const char *alg_name, u32 type,
					      u32 mask)
{
	return FUNC0(alg_name, &crypto_akcipher_type, type, mask);
}