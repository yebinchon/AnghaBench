#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ json_pretty_print; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* plot ) (int /*<<< orphan*/ *,TYPE_2__,int) ;} ;
struct TYPE_6__ {TYPE_2__* chart; } ;
typedef  TYPE_1__ GHTML ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_5__ conf ; 
 int FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__,int) ; 

__attribute__((used)) static void
FUNC6 (FILE * fp, const GHTML * def, int sp)
{
  int i, isp = 0, n = FUNC0 (def);
  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  FUNC3 (fp, "plot", sp);

  for (i = 0; i < n; ++i) {
    FUNC4 (fp, isp);
    def->chart[i].plot (fp, def->chart[i], isp);
    FUNC2 (fp, isp, (i == n - 1));
  }

  FUNC1 (fp, sp, 0);
}