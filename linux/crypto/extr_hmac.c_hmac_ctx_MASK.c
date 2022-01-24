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
struct hmac_ctx {int dummy; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 struct hmac_ctx* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct crypto_shash*) ; 
 int FUNC2 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline struct hmac_ctx *FUNC4(struct crypto_shash *tfm)
{
	return FUNC0(FUNC1(tfm) +
			 FUNC2(tfm) * 2,
			 FUNC3());
}