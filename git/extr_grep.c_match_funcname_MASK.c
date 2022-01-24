#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ (* find_func ) (char*,int,char*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  find_func_priv; } ;
typedef  TYPE_3__ xdemitconf_t ;
struct userdiff_funcname {int /*<<< orphan*/  cflags; scalar_t__ pattern; } ;
struct grep_source {TYPE_2__* driver; } ;
struct grep_opt {TYPE_3__* priv; TYPE_1__* repo; } ;
struct TYPE_6__ {struct userdiff_funcname funcname; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grep_source*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct grep_opt *opt, struct grep_source *gs, char *bol, char *eol)
{
	xdemitconf_t *xecfg = opt->priv;
	if (xecfg && !xecfg->find_func) {
		FUNC0(gs, opt->repo->index);
		if (gs->driver->funcname.pattern) {
			const struct userdiff_funcname *pe = &gs->driver->funcname;
			FUNC3(xecfg, pe->pattern, pe->cflags);
		} else {
			xecfg = opt->priv = NULL;
		}
	}

	if (xecfg) {
		char buf[1];
		return xecfg->find_func(bol, eol - bol, buf, 1,
					xecfg->find_func_priv) >= 0;
	}

	if (bol == eol)
		return 0;
	if (FUNC1(*bol) || *bol == '_' || *bol == '$')
		return 1;
	return 0;
}