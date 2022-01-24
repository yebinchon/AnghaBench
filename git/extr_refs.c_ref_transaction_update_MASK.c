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
struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  REFNAME_ALLOW_ONELEVEL ; 
 unsigned int REF_HAVE_NEW ; 
 unsigned int REF_HAVE_OLD ; 
 unsigned int REF_TRANSACTION_UPDATE_ALLOWED_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_transaction*,char const*,unsigned int,struct object_id const*,struct object_id const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 

int FUNC8(struct ref_transaction *transaction,
			   const char *refname,
			   const struct object_id *new_oid,
			   const struct object_id *old_oid,
			   unsigned int flags, const char *msg,
			   struct strbuf *err)
{
	FUNC2(err);

	if ((new_oid && !FUNC4(new_oid)) ?
	    FUNC3(refname, REFNAME_ALLOW_ONELEVEL) :
	    !FUNC6(refname)) {
		FUNC7(err, FUNC1("refusing to update ref with bad name '%s'"),
			    refname);
		return -1;
	}

	if (flags & ~REF_TRANSACTION_UPDATE_ALLOWED_FLAGS)
		FUNC0("illegal flags 0x%x passed to ref_transaction_update()", flags);

	flags |= (new_oid ? REF_HAVE_NEW : 0) | (old_oid ? REF_HAVE_OLD : 0);

	FUNC5(transaction, refname, flags,
				   new_oid, old_oid, msg);
	return 0;
}