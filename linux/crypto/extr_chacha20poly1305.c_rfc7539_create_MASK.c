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
 int FUNC0 (struct crypto_template*,struct rtattr**,char*,int) ; 

__attribute__((used)) static int FUNC1(struct crypto_template *tmpl, struct rtattr **tb)
{
	return FUNC0(tmpl, tb, "rfc7539", 12);
}