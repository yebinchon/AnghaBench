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
typedef  int /*<<< orphan*/  pcre_uchar ;
struct TYPE_3__ {int /*<<< orphan*/ * hwm; scalar_t__ start_workspace; int /*<<< orphan*/ * start_code; } ;
typedef  TYPE_1__ compile_data ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ LINK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(pcre_uchar *group, int adjust, BOOL utf, compile_data *cd,
  size_t save_hwm_offset)
{
int offset;
pcre_uchar *hc;
pcre_uchar *ptr = group;

while ((ptr = (pcre_uchar *)FUNC2(ptr, utf)) != NULL)
  {
  for (hc = (pcre_uchar *)cd->start_workspace + save_hwm_offset; hc < cd->hwm;
       hc += LINK_SIZE)
    {
    offset = (int)FUNC0(hc, 0);
    if (cd->start_code + offset == ptr + 1) break;
    }

  /* If we have not found this recursion on the forward reference list, adjust
  the recursion's offset if it's after the start of this group. */

  if (hc >= cd->hwm)
    {
    offset = (int)FUNC0(ptr, 1);
    if (cd->start_code + offset >= group) FUNC1(ptr, 1, offset + adjust);
    }

  ptr += 1 + LINK_SIZE;
  }

/* Now adjust all forward reference offsets for the group. */

for (hc = (pcre_uchar *)cd->start_workspace + save_hwm_offset; hc < cd->hwm;
     hc += LINK_SIZE)
  {
  offset = (int)FUNC0(hc, 0);
  FUNC1(hc, 0, offset + adjust);
  }
}