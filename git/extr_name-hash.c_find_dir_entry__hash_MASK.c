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
struct index_state {int /*<<< orphan*/  dir_hash; } ;
struct dir_entry {unsigned int namelen; int /*<<< orphan*/  ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 struct dir_entry* FUNC1 (int /*<<< orphan*/ *,struct dir_entry*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct dir_entry *FUNC2(struct index_state *istate,
		const char *name, unsigned int namelen, unsigned int hash)
{
	struct dir_entry key;
	FUNC0(&key.ent, hash);
	key.namelen = namelen;
	return FUNC1(&istate->dir_hash, &key, ent, name);
}