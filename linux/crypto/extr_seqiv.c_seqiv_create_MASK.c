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
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_attr_type {int type; } ;

/* Variables and functions */
 int CRYPTO_ALG_TYPE_AEAD ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct crypto_attr_type*) ; 
 int FUNC1 (struct crypto_attr_type*) ; 
 struct crypto_attr_type* FUNC2 (struct rtattr**) ; 
 int FUNC3 (struct crypto_template*,struct rtattr**) ; 

__attribute__((used)) static int FUNC4(struct crypto_template *tmpl, struct rtattr **tb)
{
	struct crypto_attr_type *algt;

	algt = FUNC2(tb);
	if (FUNC0(algt))
		return FUNC1(algt);

	if ((algt->type ^ CRYPTO_ALG_TYPE_AEAD) & CRYPTO_ALG_TYPE_MASK)
		return -EINVAL;

	return FUNC3(tmpl, tb);
}