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
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (struct rtattr*) ; 
 int FUNC3 (struct crypto_template*,struct rtattr**,char const*,char const*) ; 

__attribute__((used)) static int FUNC4(struct crypto_template *tmpl,
				  struct rtattr **tb)
{
	const char *ctr_name;
	const char *ghash_name;

	ctr_name = FUNC2(tb[1]);
	if (FUNC0(ctr_name))
		return FUNC1(ctr_name);

	ghash_name = FUNC2(tb[2]);
	if (FUNC0(ghash_name))
		return FUNC1(ghash_name);

	return FUNC3(tmpl, tb, ctr_name, ghash_name);
}