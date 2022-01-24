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
struct TYPE_7__ {size_t module; } ;
struct TYPE_6__ {int /*<<< orphan*/  sort; int /*<<< orphan*/  field; } ;
typedef  TYPE_1__ GSort ;
typedef  TYPE_2__ GHTML ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_5__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* module_sort ; 

__attribute__((used)) static void
FUNC5 (FILE * fp, const GHTML * def, int sp)
{
  GSort sort = module_sort[def->module];
  int isp = 0;
  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  /* output open sort attribute */
  FUNC1 (fp, "sort", sp);
  FUNC2 (fp, "field", FUNC3 (sort.field), isp, 0);
  FUNC2 (fp, "order", FUNC4 (sort.sort), isp, 1);
  /* output close sort attribute */
  FUNC0 (fp, sp, 0);
}