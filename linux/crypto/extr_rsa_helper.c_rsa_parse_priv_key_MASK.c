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
struct rsa_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct rsa_key*,void const*,unsigned int) ; 
 int /*<<< orphan*/  rsaprivkey_decoder ; 

int FUNC1(struct rsa_key *rsa_key, const void *key,
		       unsigned int key_len)
{
	return FUNC0(&rsaprivkey_decoder, rsa_key, key, key_len);
}