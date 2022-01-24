#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct ref_lock {int /*<<< orphan*/  lk; int /*<<< orphan*/  ref_name; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ FUNC0 (struct ref_lock*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct object_id const*) ; 
 struct object* FUNC5 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char*,...) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC7 (struct ref_lock*) ; 
 scalar_t__ FUNC8 (int,char*,int) ; 

__attribute__((used)) static int FUNC9(struct ref_lock *lock,
				 const struct object_id *oid, struct strbuf *err)
{
	static char term = '\n';
	struct object *o;
	int fd;

	o = FUNC5(the_repository, oid);
	if (!o) {
		FUNC6(err,
			    "trying to write ref '%s' with nonexistent object %s",
			    lock->ref_name, FUNC4(oid));
		FUNC7(lock);
		return -1;
	}
	if (o->type != OBJ_COMMIT && FUNC3(lock->ref_name)) {
		FUNC6(err,
			    "trying to write non-commit object %s to branch '%s'",
			    FUNC4(oid), lock->ref_name);
		FUNC7(lock);
		return -1;
	}
	fd = FUNC1(&lock->lk);
	if (FUNC8(fd, FUNC4(oid), the_hash_algo->hexsz) < 0 ||
	    FUNC8(fd, &term, 1) < 0 ||
	    FUNC0(lock) < 0) {
		FUNC6(err,
			    "couldn't write '%s'", FUNC2(&lock->lk));
		FUNC7(lock);
		return -1;
	}
	return 0;
}