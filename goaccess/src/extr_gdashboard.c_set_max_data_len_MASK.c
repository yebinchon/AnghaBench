#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* metrics; } ;
struct TYPE_7__ {int data_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ GDashMeta ;
typedef  TYPE_3__ GDashData ;

/* Variables and functions */
 int /*<<< orphan*/  MTRC_DATA_LBL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (GDashMeta * meta, GDashData * idata)
{
  int vlen = 0, llen = 0;

  vlen = FUNC0 (idata->metrics->data);
  llen = FUNC0 (MTRC_DATA_LBL);

  if (vlen > meta->data_len)
    meta->data_len = vlen;

  /* if outputting with column names, then determine if the value is
   * longer than the length of the column name */
  if (llen > meta->data_len)
    meta->data_len = llen;
}