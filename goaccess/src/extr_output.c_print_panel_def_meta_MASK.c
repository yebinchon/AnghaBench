#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ json_pretty_print; } ;
struct TYPE_7__ {int /*<<< orphan*/  table; int /*<<< orphan*/  module; } ;
typedef  TYPE_1__ GHTML ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_6__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 

__attribute__((used)) static void
FUNC9 (FILE * fp, const GHTML * def, int sp)
{
  const char *desc = FUNC2 (def->module);
  const char *head = FUNC3 (def->module);
  const char *id = FUNC4 (def->module);

  int isp = 0;
  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  FUNC5 (fp, head, desc, sp);

  FUNC1 (fp, "id", id, isp, 0);
  FUNC0 (fp, "table", def->table, isp, 0);

  FUNC8 (fp, def, isp);
  FUNC7 (fp, def, isp);
  FUNC6 (fp, def, isp);
}