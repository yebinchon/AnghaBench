#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  option; } ;
struct TYPE_4__ {TYPE_1__ contents; } ;
struct used_atom {TYPE_2__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_SUB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct strbuf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct ref_format *format, struct used_atom *atom,
			       const char *arg, struct strbuf *err)
{
	if (arg)
		return FUNC1(err, -1, FUNC0("%%(subject) does not take arguments"));
	atom->u.contents.option = C_SUB;
	return 0;
}