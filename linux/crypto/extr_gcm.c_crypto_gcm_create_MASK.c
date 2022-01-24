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

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (struct rtattr*) ; 
 int FUNC3 (struct crypto_template*,struct rtattr**,char*,char*) ; 
 int FUNC4 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC5(struct crypto_template *tmpl, struct rtattr **tb)
{
	const char *cipher_name;
	char ctr_name[CRYPTO_MAX_ALG_NAME];

	cipher_name = FUNC2(tb[1]);
	if (FUNC0(cipher_name))
		return FUNC1(cipher_name);

	if (FUNC4(ctr_name, CRYPTO_MAX_ALG_NAME, "ctr(%s)", cipher_name) >=
	    CRYPTO_MAX_ALG_NAME)
		return -ENAMETOOLONG;

	return FUNC3(tmpl, tb, ctr_name, "ghash");
}