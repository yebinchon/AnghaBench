#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bandwidth; } ;
struct TYPE_4__ {char* datakey; char* datatype; char* metakey; char* cwidth; int /*<<< orphan*/  lbl; } ;
typedef  TYPE_1__ GDefMetric ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MTRC_BW_LBL ; 
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (FILE * fp, int sp)
{
  GDefMetric def = {
    .datakey = "bytes",
    .lbl = MTRC_BW_LBL,
    .datatype = "bytes",
    .metakey = "count",
    .cwidth = "12%",
  };

  if (!conf.bandwidth)
    return;

  FUNC0 (fp, def, sp, 0);
}