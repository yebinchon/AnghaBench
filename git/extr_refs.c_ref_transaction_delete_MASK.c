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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  null_oid ; 
 int FUNC2 (struct ref_transaction*,char const*,int /*<<< orphan*/ *,struct object_id const*,unsigned int,char const*,struct strbuf*) ; 

int FUNC3(struct ref_transaction *transaction,
			   const char *refname,
			   const struct object_id *old_oid,
			   unsigned int flags, const char *msg,
			   struct strbuf *err)
{
	if (old_oid && FUNC1(old_oid))
		FUNC0("delete called with old_oid set to zeros");
	return FUNC2(transaction, refname,
				      &null_oid, old_oid,
				      flags, msg, err);
}