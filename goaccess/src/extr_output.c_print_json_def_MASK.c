#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {int module; } ;
typedef  TYPE_1__ GHTML ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  NL ; 
 int TOTAL_MODULES ; 
 TYPE_4__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  nlines ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 

__attribute__((used)) static void
FUNC5 (FILE * fp, const GHTML * def)
{
  int sp = 0;
  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    sp = 1;

  /* output open panel attribute */
  FUNC2 (fp, FUNC3 (def->module), sp);
  /* output panel data definitions */
  FUNC4 (fp, def, sp);
  /* output close panel attribute */
  FUNC0 (fp, sp, 1);

  FUNC1 (fp, (def->module != TOTAL_MODULES - 1) ? ",%.*s" : "%.*s", nlines,
          NL);
}