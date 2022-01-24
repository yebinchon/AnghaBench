#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* datatype; int /*<<< orphan*/  lbl; } ;
typedef  TYPE_1__ GDefMetric ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  OVERALL_NOTFOUND ; 
 int /*<<< orphan*/  T_UNIQUE404 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__,int) ; 

__attribute__((used)) static void
FUNC3 (FILE * fp, int sp)
{
  GDefMetric def = {
    .lbl = T_UNIQUE404,
    .datatype = "numeric",
  };
  FUNC1 (fp, OVERALL_NOTFOUND, sp);
  FUNC2 (fp, def, sp);
  FUNC0 (fp, sp, 0);
}