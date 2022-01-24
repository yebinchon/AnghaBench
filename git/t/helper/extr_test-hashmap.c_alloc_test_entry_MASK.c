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
struct test_entry {scalar_t__ key; int /*<<< orphan*/  ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t,size_t,int) ; 
 size_t FUNC3 (char*) ; 
 struct test_entry* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct test_entry *FUNC5(unsigned int hash,
					   char *key, char *value)
{
	size_t klen = FUNC3(key);
	size_t vlen = FUNC3(value);
	struct test_entry *entry = FUNC4(FUNC2(sizeof(*entry), klen, vlen, 2));
	FUNC0(&entry->ent, hash);
	FUNC1(entry->key, key, klen + 1);
	FUNC1(entry->key + klen + 1, value, vlen + 1);
	return entry;
}