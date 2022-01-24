#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct index_state {int /*<<< orphan*/  dir_hash; } ;
struct TYPE_3__ {unsigned int hash; } ;
struct dir_entry {int /*<<< orphan*/  nr; TYPE_1__ ent; struct dir_entry* parent; scalar_t__ namelen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dir_entry*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 struct dir_entry* FUNC3 (struct index_state*,scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned int FUNC7 (scalar_t__,scalar_t__) ; 
 unsigned int FUNC8 (unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static struct dir_entry *FUNC11(
	struct index_state *istate,
	struct dir_entry *parent,
	struct strbuf *prefix)
{
	struct dir_entry *dir;
	unsigned int hash;
	int lock_nr;

	/*
	 * Either we have a parent directory and path with slash(es)
	 * or the directory is an immediate child of the root directory.
	 */
	FUNC1((parent != NULL) ^ (FUNC9(prefix->buf, '/') == NULL));

	if (parent)
		hash = FUNC8(parent->ent.hash,
			prefix->buf + parent->namelen,
			prefix->len - parent->namelen);
	else
		hash = FUNC7(prefix->buf, prefix->len);

	lock_nr = FUNC2(&istate->dir_hash, hash);
	FUNC6(lock_nr);

	dir = FUNC3(istate, prefix->buf, prefix->len, hash);
	if (!dir) {
		FUNC0(dir, name, prefix->buf, prefix->len);
		FUNC5(&dir->ent, hash);
		dir->namelen = prefix->len;
		dir->parent = parent;
		FUNC4(&istate->dir_hash, &dir->ent);

		if (parent) {
			FUNC10(lock_nr);

			/* All I really need here is an InterlockedIncrement(&(parent->nr)) */
			lock_nr = FUNC2(&istate->dir_hash, parent->ent.hash);
			FUNC6(lock_nr);
			parent->nr++;
		}
	}

	FUNC10(lock_nr);

	return dir;
}