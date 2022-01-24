#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct GPanel_ {int dummy; } ;
struct TYPE_7__ {scalar_t__ json_pretty_print; } ;
struct TYPE_6__ {int /*<<< orphan*/  module; } ;
typedef  int /*<<< orphan*/  GPercTotals ;
typedef  int /*<<< orphan*/  GJSON ;
typedef  TYPE_1__ GHolder ;

/* Variables and functions */
 TYPE_5__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,struct GPanel_ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC5 (GJSON * json, GHolder * h, GPercTotals totals,
                 const struct GPanel_ *panel)
{
  int sp = 0;
  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    sp = 1;

  /* output open panel attribute */
  FUNC2 (json, FUNC0 (h->module), sp);
  /* output panel metadata */
  FUNC4 (json, h, sp);
  /* output panel data */
  FUNC3 (json, h, totals, sp, panel);
  /* output close panel attribute */
  FUNC1 (json, sp, 1);
}