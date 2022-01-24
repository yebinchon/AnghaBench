#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  idx; int /*<<< orphan*/  module; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* holder_callback ) (TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  GRawDataType ;
typedef  int /*<<< orphan*/  GRawDataItem ;
typedef  TYPE_1__ GPanel ;
typedef  TYPE_2__ GHolder ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3 (GRawDataItem item, GHolder * h, GRawDataType type,
                    const GPanel * panel)
{
  char *data = NULL;
  int hits = 0;

  if (FUNC0 (h->module, item, type, &data, &hits) == 1)
    return;

  FUNC1 (item, h, data, hits);
  if (panel->holder_callback)
    panel->holder_callback (h);

  h->idx++;
}