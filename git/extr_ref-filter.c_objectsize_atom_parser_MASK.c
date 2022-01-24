#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct used_atom {char* name; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * disk_sizep; int /*<<< orphan*/ * sizep; } ;
struct TYPE_8__ {int /*<<< orphan*/  disk_size; TYPE_1__ info; int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int /*<<< orphan*/ * disk_sizep; int /*<<< orphan*/ * sizep; } ;
struct TYPE_7__ {int /*<<< orphan*/  disk_size; TYPE_2__ info; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__ oi ; 
 TYPE_3__ oi_deref ; 
 int FUNC1 (struct strbuf*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const struct ref_format *format, struct used_atom *atom,
				  const char *arg, struct strbuf *err)
{
	if (!arg) {
		if (*atom->name == '*')
			oi_deref.info.sizep = &oi_deref.size;
		else
			oi.info.sizep = &oi.size;
	} else if (!FUNC2(arg, "disk")) {
		if (*atom->name == '*')
			oi_deref.info.disk_sizep = &oi_deref.disk_size;
		else
			oi.info.disk_sizep = &oi.disk_size;
	} else
		return FUNC1(err, -1, FUNC0("unrecognized %%(objectsize) argument: %s"), arg);
	return 0;
}