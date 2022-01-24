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
struct TYPE_7__ {scalar_t__ json_pretty_print; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ GChart ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_5__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,size_t,int) ; 

__attribute__((used)) static void
FUNC4 (FILE * fp, GChart * chart, size_t n, int sp)
{
  size_t i = 0, cnt = 0;
  int isp = 0;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  for (i = 0; i < n; ++i) {
    cnt = FUNC2 (chart + i);

    FUNC1 (fp, chart[i].key, sp);
    FUNC3 (fp, chart + i, cnt, isp);
    FUNC0 (fp, sp, (i == n - 1));
  }
}