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
struct oidset_iter {int dummy; } ;
struct oidset {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct oidset*,struct oidset_iter*) ; 
 struct object_id* FUNC2 (struct oidset_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct strbuf *req_buf, struct oidset *common)
{
	struct oidset_iter iter;
	const struct object_id *oid;
	FUNC1(common, &iter);

	while ((oid = FUNC2(&iter))) {
		FUNC3(req_buf, "have %s\n", FUNC0(oid));
	}
}