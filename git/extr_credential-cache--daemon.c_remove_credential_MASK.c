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
struct credential_cache_entry {scalar_t__ expiration; } ;
struct credential {int dummy; } ;

/* Variables and functions */
 struct credential_cache_entry* FUNC0 (struct credential const*) ; 

__attribute__((used)) static void FUNC1(const struct credential *c)
{
	struct credential_cache_entry *e;

	e = FUNC0(c);
	if (e)
		e->expiration = 0;
}