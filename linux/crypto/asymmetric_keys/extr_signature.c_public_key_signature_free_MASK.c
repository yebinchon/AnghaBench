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
struct public_key_signature {struct public_key_signature* digest; struct public_key_signature* s; struct public_key_signature** auth_ids; } ;

/* Variables and functions */
 int FUNC0 (struct public_key_signature**) ; 
 int /*<<< orphan*/  FUNC1 (struct public_key_signature*) ; 

void FUNC2(struct public_key_signature *sig)
{
	int i;

	if (sig) {
		for (i = 0; i < FUNC0(sig->auth_ids); i++)
			FUNC1(sig->auth_ids[i]);
		FUNC1(sig->s);
		FUNC1(sig->digest);
		FUNC1(sig);
	}
}