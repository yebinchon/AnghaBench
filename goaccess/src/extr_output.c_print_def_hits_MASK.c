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
struct TYPE_3__ {char* datakey; char* datatype; char* metakey; char* cwidth; int /*<<< orphan*/  lbl; } ;
typedef  TYPE_1__ GDefMetric ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MTRC_HITS_LBL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (FILE * fp, int sp)
{
  GDefMetric def = {
    .datakey = "hits",
    .lbl = MTRC_HITS_LBL,
    .datatype = "numeric",
    .metakey = "count",
    .cwidth = "12%",
  };
  FUNC0 (fp, def, sp, 0);
}