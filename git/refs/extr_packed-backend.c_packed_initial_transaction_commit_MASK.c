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
struct ref_store {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ref_transaction*,struct strbuf*) ; 

__attribute__((used)) static int FUNC1(struct ref_store *ref_store,
					    struct ref_transaction *transaction,
					    struct strbuf *err)
{
	return FUNC0(transaction, err);
}