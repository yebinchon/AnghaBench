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
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* init_db ) (struct ref_store*,struct strbuf*) ;} ;

/* Variables and functions */
 struct ref_store* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ref_store*,struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC2(struct strbuf *err)
{
	struct ref_store *refs = FUNC0(the_repository);

	return refs->be->init_db(refs, err);
}